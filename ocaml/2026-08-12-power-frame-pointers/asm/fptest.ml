let[@inline never] leaf x = x * 2 + 1
let[@inline never] middle x = leaf x + leaf (x+1)
let () = print_int (middle 3)
