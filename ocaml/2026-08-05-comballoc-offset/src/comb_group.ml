(* Combined allocations: does every block in a group land where it should?

   comballoc merges adjacent allocations in a basic block into one Ialloc of
   the total size. Blocks are laid out downwards from the top of that region,
   so each one needs its own displacement off the young pointer. Get a
   displacement wrong and two blocks overlap, which shows up as one write
   landing in someone else's fields. *)

let failures = ref 0

let check name b =
  if not b then begin
    incr failures;
    if !failures < 20 then Printf.printf "FAIL %s\n" name
  end

(* Four allocations, no call between them, so comballoc sees one group:
   three arrays and the tuple holding them. *)
let[@inline never] mk x =
  let a = [| x; x + 1 |] in
  let b = [| x + 2; x + 3; x + 4 |] in
  let c = [| x + 5 |] in
  (a, b, c)

(* Distinct sizes either side of the pair, to move the displacements around. *)
let[@inline never] mk2 x =
  let p = [| x |] in
  let q = [| x + 1; x + 2; x + 3; x + 4; x + 5; x + 6 |] in
  let r = [| x + 7; x + 8 |] in
  (r, q, p)

let contents x =
  let (a, b, c) = mk x in
  check "a.(0)" (a.(0) = x);
  check "a.(1)" (a.(1) = x + 1);
  check "b.(0)" (b.(0) = x + 2);
  check "b.(1)" (b.(1) = x + 3);
  check "b.(2)" (b.(2) = x + 4);
  check "c.(0)" (c.(0) = x + 5);
  let (r, q, p) = mk2 x in
  check "p.(0)" (p.(0) = x);
  check "q" (q.(0) = x + 1 && q.(5) = x + 6);
  check "r" (r.(0) = x + 7 && r.(1) = x + 8)

(* Overlap check. If two blocks in a group share storage, writing one is
   visible in the other. *)
let overlap x =
  let (a, b, c) = mk x in
  a.(0) <- 0xAAAA;
  b.(0) <- 0xBBBB;
  c.(0) <- 0xCCCC;
  check "no overlap a" (a.(0) = 0xAAAA && a.(1) = x + 1);
  check "no overlap b" (b.(0) = 0xBBBB && b.(1) = x + 3 && b.(2) = x + 4);
  check "no overlap c" (c.(0) = 0xCCCC)

(* The check that actually bites.

   Only the first block of a group gets its displacement from the young
   pointer; the rest are computed relative to it. So a wrong displacement
   slides the whole group up or down together and leaves the blocks correctly
   spaced relative to each other, which the checks above cannot see. What it
   does do is put the group somewhere the allocator does not know is taken,
   and the next allocation writes straight through it. *)
let[@inline never] more x =
  let d = [| x; x + 1 |] in
  let e = [| x + 2; x + 3; x + 4 |] in
  (d, e)

let clobber x =
  let (a, b, c) = mk x in
  for k = 0 to 15 do
    ignore (Sys.opaque_identity (more (x + k)))
  done;
  check "a after later allocs" (a.(0) = x && a.(1) = x + 1);
  check "b after later allocs" (b.(0) = x + 2 && b.(2) = x + 4);
  check "c after later allocs" (c.(0) = x + 5)

(* Keep some groups alive across minor collections. A block whose header is
   misplaced does not survive promotion in one piece. *)
let live = Array.make 64 ([||], [||], [||])

let survives i x =
  live.(i land 63) <- mk x;
  let (a, b, c) = live.((i + 32) land 63) in
  if Array.length a > 0 then begin
    check "promoted a" (a.(1) - a.(0) = 1);
    check "promoted b" (b.(2) - b.(0) = 2);
    check "promoted c" (Array.length c = 1)
  end

let () =
  (* Enough iterations that the minor heap fills partway through a group,
     which is the path back from the GC call rather than the fast path. *)
  for i = 0 to 2_000_000 do
    contents i;
    overlap i;
    clobber i;
    survives i i;
    if i land 0xFFFF = 0 then Gc.minor ()
  done;
  Gc.full_major ();
  if !failures = 0 then print_endline "comb_group: ok"
  else Printf.printf "comb_group: %d failures\n" !failures
