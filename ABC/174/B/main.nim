import strutils, math
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

let
    n, d = read()

var count = 0

for _ in 0..(n-1):
    let x, y = read()
    if sqrt((x ^ 2).float + (y ^ 2).float) <= d.float:
        count += 1

echo count
