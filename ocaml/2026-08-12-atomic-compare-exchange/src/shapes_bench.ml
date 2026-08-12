let iters = 200_000_000

let wall f =
  let t0 = Unix.gettimeofday () in f (); Unix.gettimeofday () -. t0

let best f = let b = ref infinity in
  for _ = 1 to 5 do let t = wall f in if t < !b then b := t done; !b

(* boolean discarded *)
let discard r n =
  for _ = 1 to n do
    ignore (Atomic.compare_and_set r 0 1);
    ignore (Atomic.compare_and_set r 1 0)
  done

(* boolean consumed by a branch, the shape real code uses *)
let acc = ref 0
let branchy r n =
  for _ = 1 to n do
    if Atomic.compare_and_set r 0 1 then incr acc;
    if Atomic.compare_and_set r 1 0 then incr acc
  done

let () =
  let r = Atomic.make 0 in
  discard r 1000; branchy r 1000;
  let d = best (fun () -> discard r iters) in
  let b = best (fun () -> branchy r iters) in
  Printf.printf "discard  %.3f ns/op\nbranchy  %.3f ns/op\n"
    (d *. 1e9 /. float (2 * iters)) (b *. 1e9 /. float (2 * iters))
