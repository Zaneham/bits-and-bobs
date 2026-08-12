let r = Atomic.make 0
let () =
  let n = 200_000_000 in
  for _ = 1 to n do
    ignore (Atomic.compare_and_set r 0 1);
    ignore (Atomic.compare_and_set r 1 0)
  done
