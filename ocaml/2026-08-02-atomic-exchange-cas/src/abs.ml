type 'a atomic = { mutable filler: unit; mutable x : 'a [@atomic] }

(* locally abstract *)
let cas_la (type a) (r : a atomic) oldv newv =
  Atomic.Loc.compare_and_set [%atomic.loc r.x] oldv newv

(* plain polymorphic *)
let cas_poly r oldv newv =
  Atomic.Loc.compare_and_set [%atomic.loc r.x] oldv newv

(* concrete pointer *)
let cas_str (r : string atomic) oldv newv =
  Atomic.Loc.compare_and_set [%atomic.loc r.x] oldv newv

(* concrete immediate *)
let cas_int (r : int atomic) oldv newv =
  Atomic.Loc.compare_and_set [%atomic.loc r.x] oldv newv
