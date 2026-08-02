(* bench_cas.ml — Atomic.exchange / Atomic.compare_and_set benchmark.

   Cases are the ones asked for on #14575:
     1. single domain
     2. two domains on the same variable (contended)
     3. two domains on separate cache lines (uncontended, make_contended)

   Plus a boxed case, because the branch only goes native when the value is
   statically immediate. A pointer-typed atomic must keep the write barrier
   and should therefore be unchanged.

   Each case is run [reps] times and reported as min and median. Min is the
   least noisy statistic for a microbenchmark; the median is there to show the
   spread is not hiding something. Samples with a non-positive elapsed time
   are discarded, since a wall clock can step backwards under NTP or a
   hypervisor.

   Build:
     ocamlfind ocamlopt -package unix -linkpkg bench_cas.ml -o bench_cas
   or in-tree:
     ocamlopt -I <tree>/otherlibs/unix unix.cmxa bench_cas.ml -o bench_cas *)

let iters = 100_000_000
let reps = 9

let wall f =
  let t0 = Unix.gettimeofday () in
  f ();
  Unix.gettimeofday () -. t0

let median l =
  let a = Array.of_list l in
  Array.sort compare a;
  a.(Array.length a / 2)

let run label f =
  let samples = ref [] in
  for _ = 1 to reps do
    let dt = wall f in
    if dt > 0.0 then samples := dt :: !samples
  done;
  match !samples with
  | [] -> Printf.printf "  %-34s NO VALID SAMPLES\n%!" label
  | s ->
      let ns dt = dt /. Float.of_int iters *. 1e9 in
      Printf.printf "  %-34s min %5.2f  median %5.2f  ns/op  (%d/%d samples)\n%!"
        label (ns (List.fold_left min infinity s)) (ns (median s))
        (List.length s) reps

(* Two domains, [f] run on each half of the iteration count. *)
let pair f a b n =
  let d = Domain.spawn (fun () -> f b n) in
  f a n;
  Domain.join d

(* ---- workloads ---- *)

let exch r n = for i = 1 to n do ignore (Atomic.exchange r i) done

(* Alternates 0 and 1 so every cas succeeds and we time the instruction
   rather than a retry loop. *)
let cas r n =
  for _ = 1 to n / 2 do
    ignore (Atomic.compare_and_set r 0 1);
    ignore (Atomic.compare_and_set r 1 0)
  done

(* Pointer payload. Values are pre-allocated so the loop measures the atomic
   and the barrier, not the allocator. *)
let boxed_vals = Array.init 64 (fun i -> ref i)
let exch_boxed r n =
  for i = 1 to n do
    ignore (Atomic.exchange r (Array.unsafe_get boxed_vals (i land 63)))
  done

let () =
  Printf.printf "atomic exchange / compare_and_set (%d iters, %d reps)\n"
    iters reps;
  Printf.printf "%s\n" (String.make 76 '-');

  (* warmup *)
  let w = Atomic.make 0 in
  exch w 100_000; cas w 100_000;

  let r = Atomic.make 0 in
  run "exchange, single domain" (fun () -> exch r iters);
  run "cas, single domain" (fun () -> cas r iters);

  let c = Atomic.make 0 in
  run "exchange, 2 domains, contended"
    (fun () -> pair exch c c (iters / 2));
  run "cas, 2 domains, contended"
    (fun () -> pair cas c c (iters / 2));

  let u1 = Atomic.make_contended 0 and u2 = Atomic.make_contended 0 in
  run "exchange, 2 domains, uncontended"
    (fun () -> pair exch u1 u2 (iters / 2));
  run "cas, 2 domains, uncontended"
    (fun () -> pair cas u1 u2 (iters / 2));

  let b = Atomic.make (ref 0) in
  run "exchange, boxed (stays a C call)" (fun () -> exch_boxed b iters);

  Printf.printf "%s\ndone.\n" (String.make 76 '-')
