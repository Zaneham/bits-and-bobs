let[@inline never] sub_chain (a : int array) =
  let acc = ref 0 in
  for i = 0 to Array.length a - 1 do
    acc := !acc - Array.unsafe_get a i
  done;
  !acc

let[@inline never] sub_arrays (a : int array) (b : int array) (c : int array) =
  for i = 0 to Array.length a - 1 do
    Array.unsafe_set c i (Array.unsafe_get a i - Array.unsafe_get b i)
  done;
  Array.unsafe_get c (Array.length c - 1)

let[@inline never] mod_loop (a : int array) m =
  let acc = ref 0 in
  for i = 0 to Array.length a - 1 do
    acc := !acc + (Array.unsafe_get a i mod m)
  done;
  !acc

let () =
  let (n, reps) = Bench.args () in
  let a = Array.init n (fun i -> i * 3 + 1) in
  let b = Array.init n (fun i -> i lxor 0x5555) in
  let c = Array.make n 0 in
  let m = int_of_string (Sys.getenv_opt "M" |> Option.value ~default:"7") in
  Bench.run "sub-chain" reps (fun () -> sub_chain a);
  Bench.run "sub-arrays" reps (fun () -> sub_arrays a b c);
  Bench.run "mod-loop" reps (fun () -> mod_loop a m)
