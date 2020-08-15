import strutils, sequtils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt
template rep(p: untyped, n: int): seq = newSeqWith(n, p)

let
  x:int = read()
  k:int = read()
  d:int = read()

proc cal(val_x: int, val_k: int): int =
  var current_x = val_x
  var current_k = val_k
  if current_x == 0:
    if k mod 2 == 0:
      return 0
    else:
      return k
  elif current_x > 0:
    while current_x > 0:
      current_x -= d
      current_k -= 1
      if current_k == 0:
        return abs(current_x)
    if abs(current_x) < abs(current_x + d):
      let rem_k = current_k mod 2
      return abs(current_x + rem_k * d)
    else:
      let rem_k = (current_k + 1) mod 2
      return abs(current_x + d - rem_k * d)
  else:
    while current_x < 0:
      current_x += d
      current_k -= 1
      if current_k == 0:
        return abs(current_x)
    if abs(current_x) < abs(current_x - d):
      let rem_k = current_k mod 2
      return abs(current_x - rem_k * d)
    else:
      let rem_k = (current_k + 1) mod 2
      return abs(current_x + d + rem_k * d)

echo cal(x, k)