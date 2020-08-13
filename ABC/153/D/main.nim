import strutils, math
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

let h = read()

proc count_monster(hit_point: int): int =
  if hit_point == 1:
    return 1
  else:
    return 2 * count_monster(floor(hit_point / 2).int()) + 1
  return hit_point

echo(count_monster(h))
