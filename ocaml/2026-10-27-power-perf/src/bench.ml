let time f =
  let t0 = Unix.gettimeofday () in
  let r = f () in
  (Unix.gettimeofday () -. t0, r)

let run name reps f =
  let best = ref infinity and last = ref 0 in
  for _ = 1 to reps do
    let (t, r) = time f in
    if t < !best then best := t;
    last := r
  done;
  Printf.printf "%-14s %10.3f ms   check=%d\n%!" name (!best *. 1000.) !last

let args () =
  let n = if Array.length Sys.argv > 1 then int_of_string Sys.argv.(1) else 1 lsl 22 in
  let reps = if Array.length Sys.argv > 2 then int_of_string Sys.argv.(2) else 20 in
  (n, reps)
