let r = Atomic.make 0

(* boolean consumed by a branch, the common shape *)
let branchy () = if Atomic.compare_and_set r 1 2 then 10 else 20

(* boolean materialised as a value *)
let valued () = Atomic.compare_and_set r 3 4
