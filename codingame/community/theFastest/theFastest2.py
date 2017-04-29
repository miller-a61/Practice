import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = int(input())
x = 86400
a = ""

for i in range(n):
    t = input()
    u = int(t[0:2]) * 3600 + int(t[3:5]) * 60 + int(t[6:8])
    
    if (u < x):
        a = t
        x = u

print(a)
