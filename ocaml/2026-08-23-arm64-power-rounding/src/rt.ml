let o = Sys.opaque_identity

let f1 x = Float.floor (o x)
let f2 x = Float.ceil (o x)
let f3 x = Float.trunc (o x)
let f4 x = Float.round (o x)
let f5 x = floor (o x)
let f6 x = ceil (o x)

let () =
  Printf.printf "%h %h %h %h %h %h\n"
    (f1 3.7) (f2 3.7) (f3 (-3.7)) (f4 2.5) (f5 (-0.5)) (f6 (-0.5))
