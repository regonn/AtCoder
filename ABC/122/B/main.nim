import sequtils
let
    S = readline(stdin)
    N = len(S)
var
    ans = 0

for i in 0..(N-1):
    for j in i..(N-1):
        if all(S[i..j], proc (x: char): bool = return "ATCG".contains(x)):
            ans = max(ans, j - i +  1)

echo ans