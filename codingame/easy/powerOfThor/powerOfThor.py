import sys
import math

light_x, light_y, initial_tx, initial_ty = [int(i) for i in raw_input().split()]

# game loop
while True:
    remaining_turns = int(raw_input())  # The remaining amount of turns Thor can move. Do not remove this line.

    ns = ""
    ew = ""

    if initial_ty < light_y :
        ns = "S"
        initial_ty = initial_ty + 1
    elif initial_ty > light_y :
        ns = "N"
        initial_ty = initial_ty - 1
    else :
        ns = ""

    if initial_tx < light_x :
        ew = "E"
        initial_tx = initial_tx + 1
    elif initial_tx > light_x :
        ew = "W"
        initial_tx = initial_tx - 1
    else :
        ew = ""
    print(ns+ew)
