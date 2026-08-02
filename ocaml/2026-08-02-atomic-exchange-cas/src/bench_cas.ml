(* bench_cas.ml — multi-domain benchmark for Atomic.exchange and
   Atomic.compare_and_set, same three cases as bench_multi.ml:
     1. Single domain (baseline)
     2. Two domains, same variable (contended)
     3. Two domains, different variables (uncontended, cache-line separated)

   Run against trunk and against the branch to get the comparison. *)

let iters = 100_000_000

let wall f =
  let t0 = Unix.gettimeofday () in
  f ();
  Unix.gettimeofday () -. t0

let report label n dt =
  let ns = dt /. Float.of_int n *. 1e9 in
  Printf.printf "  %-36s %8d iters  %.3fs  %5.1f ns/op\n" label n dt ns

(* Every cas here succeeds, so we measure the instruction and not the retry
   loop. r alternates between 0 and 1 so consecutive iterations differ. *)
let cas_pair r =
  ignore (Atomic.compare_and_set r 0 1);
  ignore (Atomic.compare_and_set r 1 0)

(* ---- exchange ---- *)

let exch_single () =
  let r = Atomic.make 0 in
  let dt = wall (fun () ->
    for i = 1 to iters do ignore (Atomic.exchange r i) done)
  in
  report "exchange, single domain" iters dt

let exch_contended () =
  let r = Atomic.make 0 in
  let half = iters / 2 in
  let dt = wall (fun () ->
    let d = Domain.spawn (fun () ->
      for i = 1 to half do ignore (Atomic.exchange r i) done)
    in
    for i = 1 to half do ignore (Atomic.exchange r i) done;
    Domain.join d)
  in
  report "exchange, 2 domains, contended" iters dt

let exch_uncontended () =
  let r1 = Atomic.make_contended 0 and r2 = Atomic.make_contended 0 in
  let half = iters / 2 in
  let dt = wall (fun () ->
    let d = Domain.spawn (fun () ->
      for i = 1 to half do ignore (Atomic.exchange r2 i) done)
    in
    for i = 1 to half do ignore (Atomic.exchange r1 i) done;
    Domain.join d)
  in
  report "exchange, 2 domains, uncontended" iters dt

(* ---- compare_and_set ---- *)

let cas_single () =
  let r = Atomic.make 0 in
  let dt = wall (fun () ->
    for _ = 1 to iters / 2 do cas_pair r done)
  in
  report "cas, single domain" iters dt

let cas_contended () =
  let r = Atomic.make 0 in
  let quarter = iters / 4 in
  let dt = wall (fun () ->
    let d = Domain.spawn (fun () ->
      for _ = 1 to quarter do cas_pair r done)
    in
    for _ = 1 to quarter do cas_pair r done;
    Domain.join d)
  in
  report "cas, 2 domains, contended" iters dt

let cas_uncontended () =
  let r1 = Atomic.make_contended 0 and r2 = Atomic.make_contended 0 in
  let quarter = iters / 4 in
  let dt = wall (fun () ->
    let d = Domain.spawn (fun () ->
      for _ = 1 to quarter do cas_pair r2 done)
    in
    for _ = 1 to quarter do cas_pair r1 done;
    Domain.join d)
  in
  report "cas, 2 domains, uncontended" iters dt

let () =
  Printf.printf "atomic exchange / compare_and_set benchmark (%d iterations)\n"
    iters;
  Printf.printf "%s\n" (String.make 72 '-');

  let w = Atomic.make 0 in
  for i = 1 to 10_000 do ignore (Atomic.exchange w i) done;
  for _ = 1 to 10_000 do cas_pair w done;

  exch_single ();
  exch_contended ();
  exch_uncontended ();
  cas_single ();
  cas_contended ();
  cas_uncontended ();

  Printf.printf "%s\n" (String.make 72 '-');
  Printf.printf "done.\n"
