import sys
import math
while True:
    mtn = [None]*8
    for i in range(8):
        mountain_h = int(input())  # represents the height of one mountain.
        mtn[i] = mountain_h

    print(mtn.index(max(mtn)))