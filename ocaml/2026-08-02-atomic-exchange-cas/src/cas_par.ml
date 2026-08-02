(* Exercises the multi-domain path, where cas and exchange must actually be
   atomic rather than just correct on one core. *)
type 'a atomic_t
external at_make : 'a -> 'a atomic_t = "%makemutable"
external at_get : 'a atomic_t -> 'a = "%atomic_load"
external at_cas : 'a atomic_t -> 'a -> 'a -> bool = "%atomic_cas"
external at_exch : 'a atomic_t -> 'a -> 'a = "%atomic_exchange"

let ndomains = 4
let per_domain = 100_000

(* Every increment goes through a cas retry loop. If cas is not atomic the
   total comes out short. *)
let counter : int atomic_t = at_make 0

let rec bump () =
  let v = at_get counter in
  if at_cas counter v (v + 1) then () else bump ()

(* Each domain repeatedly swaps in its own tag and records what it displaced.
   Every value put in must come out exactly once, so the multiset of observed
   old values plus the final value must match what was written. *)
let slot : int atomic_t = at_make 0
let seen = Array.make (ndomains * per_domain + ndomains + 1) 0

let () =
  let ds =
    List.init ndomains (fun _ ->
      Domain.spawn (fun () -> for _ = 1 to per_domain do bump () done))
  in
  List.iter Domain.join ds;
  let total = at_get counter in
  if total <> ndomains * per_domain then begin
    Printf.printf "FAIL cas counter: got %d want %d\n" total
      (ndomains * per_domain);
    exit 1
  end;
  (* exchange: hand out unique tags, collect what each swap displaced *)
  let counts = Array.make ndomains 0 in
  let ds =
    List.init ndomains (fun d ->
      Domain.spawn (fun () ->
        let local = Array.make (per_domain + 1) 0 in
        let n = ref 0 in
        for k = 1 to per_domain do
          let tag = (d * per_domain) + k + ndomains in
          let old = at_exch slot tag in
          local.(!n) <- old; incr n
        done;
        counts.(d) <- !n;
        local))
  in
  let results = List.map Domain.join ds in
  List.iteri (fun d arr ->
    for k = 0 to counts.(d) - 1 do
      let v = arr.(k) in
      seen.(v) <- seen.(v) + 1
    done) results;
  seen.(at_get slot) <- seen.(at_get slot) + 1;
  (* tag 0 was the initial value, every other tag written must appear once *)
  let bad = ref 0 in
  if seen.(0) <> 1 then incr bad;
  for d = 0 to ndomains - 1 do
    for k = 1 to per_domain do
      let tag = (d * per_domain) + k + ndomains in
      if seen.(tag) <> 1 then incr bad
    done
  done;
  if !bad <> 0 then begin
    Printf.printf "FAIL exchange: %d tags not seen exactly once\n" !bad;
    exit 1
  end;
  print_endline "all ok"
