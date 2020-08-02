import strutils, sequtils, math
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

let k: int64 = read()
var
    current_number: int64 = 7
    count = 1

if k mod 2 == 0:
    echo -1

while current_number mod k != 0:
    count += 1
    current_number = (7 * ((10 ^ count) - 1)) div 9'i64
    echo current_number

echo count