import strutils
let get = iterator: string {.closure.} =
  for s in stdin.readAll.split: yield s
proc read: int = get().parseInt

proc is_prime(number: int): bool =
    if ( number <= 1 ):
        return false
    var index = 2
    while index * index <= number:
        if ( number mod index == 0 ):
            return false
        index += 1
    return true

var number = read()

while not is_prime(number):
    number += 1

echo number