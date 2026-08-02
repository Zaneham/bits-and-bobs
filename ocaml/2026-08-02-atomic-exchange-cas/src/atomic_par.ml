(* Same shape as cas_par, but through the public API, and with a pointer-typed
   atomic running alongside so the write barrier path stays exercised under
   real GC pressure. *)

let ndomains = 4
let per_domain = 100_000

let counter = Atomic.make 0

let rec bump () =
  let v = Atomic.get counter in
  if Atomic.compare_and_set counter v (v + 1) then () else bump ()

(* Pointer payloads. Each swapped-in value is freshly allocated, so if the
   barrier were skipped here the major GC would lose track of young blocks. *)
let boxed : string ref Atomic.t = Atomic.make (ref "start")

let churn d =
  for k = 1 to per_domain / 10 do
    let fresh = ref (Printf.sprintf "d%d-%d" d k) in
    let old = Atomic.exchange boxed fresh in
    (* touch the displaced value so it cannot be optimised away *)
    if String.length !old = 0 then failwith "empty";
    ignore (Atomic.compare_and_set boxed fresh (ref "interloper"))
  done

let () =
  let ds =
    List.init ndomains (fun d ->
      Domain.spawn (fun () ->
        for _ = 1 to per_domain do bump () done;
        churn d;
        Gc.minor ()))
  in
  List.iter Domain.join ds;
  Gc.full_major ();
  let total = Atomic.get counter in
  if total <> ndomains * per_domain then begin
    Printf.printf "FAIL counter: got %d want %d\n" total
      (ndomains * per_domain);
    exit 1
  end;
  (* the surviving boxed value must still be readable after a full major *)
  let s = !(Atomic.get boxed) in
  if String.length s = 0 then (print_endline "FAIL boxed"; exit 1);
  print_endline "all ok"
