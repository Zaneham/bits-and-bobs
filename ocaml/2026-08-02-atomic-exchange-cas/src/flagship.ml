let r : int Atomic.t = Atomic.make 0
let f () = Atomic.compare_and_set r 1 2
let g () = Atomic.exchange r 5

let p : string Atomic.t = Atomic.make "a"
let h () = Atomic.compare_and_set p "a" "b"
let k () = Atomic.exchange p "c"

let b : bool Atomic.t = Atomic.make true
let m () = Atomic.compare_and_set b true false

(* still polymorphic, must stay on the C call *)
let poly (t : 'a Atomic.t) o n = Atomic.compare_and_set t o n
