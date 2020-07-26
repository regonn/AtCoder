import strutils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

proc cal(number: int): int =
    if number mod 2 == 0:
        result = number div 2
    else:
        result = 3 * number + 1

let
    s = read();

var
    a: seq[int]
    new_number = s

while find(a, new_number) < 0:
    a.add(new_number)
    new_number = cal(new_number)

echo len(a) + 1