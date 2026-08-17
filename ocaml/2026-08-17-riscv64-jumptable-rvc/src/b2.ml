let () =
  let b = Buffer.create 16 in
  Buffer.add_string b "hello";
  Buffer.add_string b " world";
  print_endline ("b2 buffer [" ^ Buffer.contents b ^ "]")
