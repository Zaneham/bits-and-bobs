let[@inline never] chain n =
  let x = ref 0.5 in
  for i = 1 to n do
    x := float_of_int (int_of_float !x + (i land 3)) +. 0.25
  done;
  int_of_float !x

let[@inline never] i2f (a : int array) (b : float array) =
  for i = 0 to Array.length a - 1 do
    Array.unsafe_set b i (float_of_int (Array.unsafe_get a i))
  done;
  int_of_float (Array.unsafe_get b (Array.length b - 1))

let[@inline never] f2i (b : float array) (c : int array) =
  for i = 0 to Array.length b - 1 do
    Array.unsafe_set c i (int_of_float (Array.unsafe_get b i))
  done;
  Array.unsafe_get c (Array.length c - 1)

let () =
  let (n, reps) = Bench.args () in
  let a = Array.init n (fun i -> i * 7 land 0xffff) in
  let b = Array.make n 0.0 and c = Array.make n 0 in
  Bench.run "conv-chain" reps (fun () -> chain n);
  Bench.run "conv-i2f" reps (fun () -> i2f a b);
  Bench.run "conv-f2i" reps (fun () -> f2i b c)
