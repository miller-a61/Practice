import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = int(input())  # the number of temperatures to analyse
temps = input()  # the n temperatures expressed as integers ranging from -273 to 5526

#temp = temps.split
temp = map(int, temps.split())

closest = 100000

if len(temps) == 0:
    print ("0")
else:
    for index in temp:
        tst = index
        if abs(closest) == abs(tst) and closest < 0 :
            closest = tst
        elif abs(closest) > abs(tst):
            closest = tst
    print(closest)
