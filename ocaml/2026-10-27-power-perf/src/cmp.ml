let[@inline never] lt_int (a : int array) (b : bool array) k =
  for i = 0 to Array.length a - 1 do
    Array.unsafe_set b i (Array.unsafe_get a i < k)
  done;
  Bool.to_int (Array.unsafe_get b (Array.length b - 1))

let[@inline never] count_lt (a : int array) k =
  let c = ref 0 in
  for i = 0 to Array.length a - 1 do
    c := !c + Bool.to_int (Array.unsafe_get a i < k)
  done;
  !c

let[@inline never] le_float (a : float array) (b : bool array) k =
  for i = 0 to Array.length a - 1 do
    Array.unsafe_set b i (Array.unsafe_get a i <= k)
  done;
  Bool.to_int (Array.unsafe_get b (Array.length b - 1))

let () =
  let (n, reps) = Bench.args () in
  let a = Array.init n (fun i -> (i * 2654435761) land 0xffff) in
  let f = Array.init n (fun i -> float_of_int (i land 1023) /. 1024.) in
  let b = Array.make n false in
  let k = int_of_string (Sys.getenv_opt "K" |> Option.value ~default:"32768") in
  Bench.run "cmp-lt-store" reps (fun () -> lt_int a b k);
  Bench.run "cmp-lt-count" reps (fun () -> count_lt a k);
  Bench.run "cmp-le-float" reps (fun () -> le_float f b 0.5)
