(* Contention stress for the compare-exchange lowering.

   The interesting failure modes after making the instruction return the value
   it found are a cas that succeeds when it should not (lost updates) and a
   cas whose boolean disagrees with what it actually did. Both show up as a
   wrong total here. *)

let ndomains = 4
let per_domain = 100_000

let failures = ref 0

let check name ok =
  if ok then Printf.printf "  PASS: %s\n" name
  else begin incr failures; Printf.printf "  FAIL: %s\n" name end

(* ---- Single-threaded semantics ---- *)

let () =
  Printf.printf "Single-threaded semantics\n";
  let r = Atomic.make 0 in
  check "cas hit returns true" (Atomic.compare_and_set r 0 1);
  check "cas hit stored" (Atomic.get r = 1);
  check "cas miss returns false" (not (Atomic.compare_and_set r 0 2));
  check "cas miss left value alone" (Atomic.get r = 1);
  check "cas to same value" (Atomic.compare_and_set r 1 1);
  check "exchange returns old" (Atomic.exchange r 9 = 1);
  check "exchange stored" (Atomic.get r = 9);
  let b = Atomic.make false in
  check "bool cas hit" (Atomic.compare_and_set b false true);
  check "bool cas miss" (not (Atomic.compare_and_set b false true));
  check "bool value" (Atomic.get b = true);
  (* negative and large immediates, in case anything sign-extends wrongly *)
  let n = Atomic.make (-1) in
  check "negative cas" (Atomic.compare_and_set n (-1) min_int);
  check "negative stored" (Atomic.get n = min_int);
  check "max_int cas" (Atomic.compare_and_set n min_int max_int);
  check "max_int stored" (Atomic.get n = max_int)

(* ---- Pointer-typed atomics keep the write barrier ---- *)

let () =
  Printf.printf "Boxed (barrier retained)\n";
  let a = "a" and b = "b" in
  let r = Atomic.make a in
  check "boxed cas miss" (not (Atomic.compare_and_set r b a));
  check "boxed cas hit" (Atomic.compare_and_set r a b);
  check "boxed value" (Atomic.get r == b);
  Gc.full_major ();
  check "boxed survives gc" (Atomic.get r = "b")

(* ---- Contended increment: every update must land ---- *)

let () =
  Printf.printf "Contended increment (%d domains x %d)\n" ndomains per_domain;
  let r = Atomic.make 0 in
  let bump () =
    for _ = 1 to per_domain do
      let rec go () =
        let cur = Atomic.get r in
        if not (Atomic.compare_and_set r cur (cur + 1)) then go ()
      in
      go ()
    done
  in
  let ds = List.init (ndomains - 1) (fun _ -> Domain.spawn bump) in
  bump ();
  List.iter Domain.join ds;
  check "no lost updates" (Atomic.get r = ndomains * per_domain)

(* ---- Contended exchange: every tag seen exactly once ---- *)

let () =
  Printf.printf "Contended exchange\n";
  let r = Atomic.make 0 in
  let seen = Array.make (ndomains * per_domain + 1) 0 in
  let collect id =
    let acc = ref [] in
    for i = 1 to per_domain do
      acc := Atomic.exchange r (id * per_domain + i) :: !acc
    done;
    !acc
  in
  let ds = List.init (ndomains - 1) (fun i -> Domain.spawn (fun () ->
    collect (i + 1))) in
  let mine = collect 0 in
  let all = List.concat (mine :: List.map Domain.join ds) in
  List.iter (fun v -> seen.(v) <- seen.(v) + 1) all;
  seen.(Atomic.get r) <- seen.(Atomic.get r) + 1;
  (* tag 0 is the initial value, every other tag was written exactly once, so
     each must come back out exactly once *)
  let ok = ref true in
  for i = 0 to ndomains * per_domain do
    if seen.(i) <> 1 then ok := false
  done;
  check "every value observed exactly once" !ok

let () =
  if !failures = 0 then print_endline "ALL OK"
  else begin Printf.printf "%d FAILURES\n" !failures; exit 1 end
