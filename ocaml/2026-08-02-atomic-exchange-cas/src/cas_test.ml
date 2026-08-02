(* Direct exercise of the native path: Ref-kind externals at int type. *)
type 'a atomic_t
external at_make : 'a -> 'a atomic_t = "%makemutable"
external at_get : 'a atomic_t -> 'a = "%atomic_load"
external at_cas : 'a atomic_t -> 'a -> 'a -> bool = "%atomic_cas"
external at_exch : 'a atomic_t -> 'a -> 'a = "%atomic_exchange"

let check name b = if not b then (Printf.printf "FAIL %s\n" name; exit 1)

let () =
  let r : int atomic_t = at_make 10 in
  (* failing cas leaves the value alone and reports false *)
  check "cas-fail-result" (at_cas r 99 42 = false);
  check "cas-fail-value" (at_get r = 10);
  (* succeeding cas swaps and reports true *)
  check "cas-ok-result" (at_cas r 10 42 = true);
  check "cas-ok-value" (at_get r = 42);
  (* negative and zero values *)
  check "cas-neg" (at_cas r 42 (-7) = true);
  check "cas-neg-value" (at_get r = -7);
  check "cas-zero" (at_cas r (-7) 0 = true);
  check "cas-zero-value" (at_get r = 0);
  (* cas where expected equals new *)
  check "cas-same" (at_cas r 0 0 = true);
  check "cas-same-value" (at_get r = 0);
  (* exchange returns the old value *)
  check "exch-old" (at_exch r 5 = 0);
  check "exch-new" (at_get r = 5);
  check "exch-old2" (at_exch r (-1) = 5);
  check "exch-new2" (at_get r = -1);
  (* bool payloads, the shape stdlib's at_exit uses *)
  let b : bool atomic_t = at_make true in
  check "cas-bool" (at_cas b true false = true);
  check "cas-bool-value" (at_get b = false);
  check "cas-bool-fail" (at_cas b true false = false);
  (* the result feeds a branch, so the tagging must be right *)
  let c : int atomic_t = at_make 1 in
  let taken = if at_cas c 1 2 then "yes" else "no" in
  check "cas-branch" (taken = "yes");
  let n = ref 0 in
  for _ = 1 to 1000 do
    if at_cas c 2 2 then incr n
  done;
  check "cas-loop" (!n = 1000);
  print_endline "all ok"
