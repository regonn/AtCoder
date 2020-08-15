import strutils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

let
    N, A, B = read()
var ans = (N div (A + B)) * A
let rem = N mod (A + B)

ans += min(rem, A)
echo ans