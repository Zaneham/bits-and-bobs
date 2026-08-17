let f a b c = a + b + c
let g = f 1 2
let () = print_endline ("c1 " ^ string_of_int (g 3))
