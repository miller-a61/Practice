import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
horses = []
n = int(input())
sdist = 9999999

for i in range(n):
    pi = int(input())
    horses.append(pi)

horses.sort()

j = 1
while j < n :
    dist = horses[j] - horses[j - 1]
    if (dist < sdist):
        sdist = dist
    j = j + 1

# Write an action using print
# To debug: print("Debug messages...", file=sys.stderr)

print(sdist)
