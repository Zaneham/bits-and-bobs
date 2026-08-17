type op = Aa | Bb | Cc | Dd | Ee | Ff | Gg | Hh | Ii | Jj | Kk | Ll

(* distinct code per branch, so the match lowers to a real switch rather than
   a constant table *)
let apply o x =
  match o with
  | Aa -> x + 1
  | Bb -> x * 2
  | Cc -> x - 3
  | Dd -> x * x
  | Ee -> x lsl 1
  | Ff -> x lsr 1
  | Gg -> x lxor 255
  | Hh -> x land 15
  | Ii -> x lor 64
  | Jj -> (x * 7) + 3
  | Kk -> (x - 9) * 2
  | Ll -> abs (x - 100)

let all = [| Aa; Bb; Cc; Dd; Ee; Ff; Gg; Hh; Ii; Jj; Kk; Ll |]

let () =
  Array.iter (fun o -> print_string (string_of_int (apply o 10) ^ " ")) all;
  print_newline ()
