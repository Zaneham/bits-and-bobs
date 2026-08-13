external bswap16 : int -> int = "%bswap16"
external bswap32 : int32 -> int32 = "%bswap_int32"
external bswap64 : int64 -> int64 = "%bswap_int64"

let o = Sys.opaque_identity

let check name got want =
  Printf.printf "%-14s %s\n" name (if got = want then "ok" else "MISMATCH")

let () =
  check "bswap16 ABCD" (bswap16 (o 0xABCD)) 0xCDAB;
  check "bswap16 00FF" (bswap16 (o 0x00FF)) 0xFF00;
  check "bswap16 0000" (bswap16 (o 0x0000)) 0x0000;
  check "bswap16 FFFF" (bswap16 (o 0xFFFF)) 0xFFFF;
  (* high bits above the halfword must not leak into the result *)
  check "bswap16 dirty" (bswap16 (o 0x1234ABCD)) 0xCDAB;
  Printf.printf "%-14s %ld\n" "bswap32 pos" (bswap32 (o 0x12345678l));
  Printf.printf "%-14s %ld\n" "bswap32 neg" (bswap32 (o 0x000000FFl));
  Printf.printf "%-14s %Ld\n" "bswap64" (bswap64 (o 0x0123456789ABCDEFL))
