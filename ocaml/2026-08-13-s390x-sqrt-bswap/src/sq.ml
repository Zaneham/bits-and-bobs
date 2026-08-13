let f x = sqrt x

let () =
  Printf.printf "%.6f\n" (f 2.0);
  Printf.printf "%.6f\n" (f 0.0);
  Printf.printf "%.6f\n" (f 1e300);
  Printf.printf "%b\n" (Float.is_nan (f (-1.0)));
  Printf.printf "%b\n" (f infinity = infinity)
