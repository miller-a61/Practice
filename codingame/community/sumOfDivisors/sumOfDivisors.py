import sys
import math
x = int(raw_input())
y = int(x/2)
z = 0
i = 1
while i <= x:
    z += y//i * (1+ x//i)
    if (x//i%2 == 1 ):
        z += 1+y//i
    i += 1
print(z)

