from math import log10
def count_trees_dyn(n):
    if n == 1: return 1
    elif n==2: return 1
    elif n==3: return 3
    N = (2*n) - 3
    dp = [0 for i in range(N)]
    o = 3
    dp[0] = 1
    for i in range(1,N):
        dp[i] = dp[i-1] * o
        o += 2
    return dp[-4]

limit = log10(3.28 * 10**(80))
print(f"Limit: {limit}")
result = 0
n = 0
while result < limit:
    n += 1
    t = count_trees_dyn(n)
    result = log10(t)
print(f"{n}: {result}")
print(f"ntrees: {t}")