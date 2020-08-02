import strutils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

let x = read()

if x >= 30:
    echo "Yes"
else:
    echo "No"