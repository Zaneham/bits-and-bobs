(* 1. public Atomic API at a concrete immediate type *)
let r : int Atomic.t = Atomic.make 0
let a1 () = Atomic.compare_and_set r 1 2
let a2 () = Atomic.exchange r 5

(* 2. Ref-kind external at a concrete immediate type *)
type 'a atomic_t
external at_make : 'a -> 'a atomic_t = "%makemutable"
external at_cas : 'a atomic_t -> 'a -> 'a -> bool = "%atomic_cas"
external at_exch : 'a atomic_t -> 'a -> 'a = "%atomic_exchange"
let b : int atomic_t = at_make 0
let b1 () = at_cas b 1 2
let b2 () = at_exch b 7

(* 3. Loc-kind on a concrete atomic record field *)
type rec_int = { mutable f : int [@atomic] }
let c = { f = 0 }
let c1 () = Atomic.Loc.compare_and_set [%atomic.loc c.f] 1 2

(* 4. pointer-typed, must stay a C call *)
let p : string Atomic.t = Atomic.make "a"
let d1 () = Atomic.compare_and_set p "a" "b"
type rec_str = { mutable g : string [@atomic] }
let e = { g = "a" }
let e1 () = Atomic.Loc.compare_and_set [%atomic.loc e.g] "a" "b"
