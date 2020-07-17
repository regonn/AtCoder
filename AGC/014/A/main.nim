import strutils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

var
    a, b, c = read()
    count = 0

if (a mod 2 != 0) or (b mod 2 != 0) or (c mod 2 != 0):
  echo $(0)

else:
  if a == b and b==c:
    echo $(-1)

  else:

    while (a mod 2 == 0) and (b mod 2 == 0) and (c mod 2 == 0):
      let
        new_a = (b div 2) + (c div 2)
        new_b = (a div 2) + (c div 2)
        new_c = (a div 2) + (b div 2)
      a = new_a
      b = new_b
      c = new_c
      count += 1;

    echo count
