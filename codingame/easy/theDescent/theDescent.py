import sys
import math
while True:
    mtn = [None]*8
    for i in xrange(8):
        mtn[i] = int(raw_input())  # represents the height of one mountain.
    print(mtn.index(max(mtn)))
