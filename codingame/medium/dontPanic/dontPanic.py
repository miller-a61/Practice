import sys
import math

nb_floors, width, nb_rounds, exit_floor, exit_pos, nb_total_clones, nb_additional_elevators, nb_elevators = [int(i) for i in input().split()]

elevator_floor = -1
elevator_pos = -1
elevator_arr = [None]*nb_elevators

for i in range(nb_elevators):
    # elevator_floor: floor on which this elevator is found
    # elevator_pos: position of the elevator on its floor
    elevator_floor, elevator_pos = [int(j) for j in input().split()]
    elevator_arr[elevator_floor] = elevator_pos

current_floor = 0
current_dir = "Right"
current_turn = 1
target_dest = -1
current_floor_blocked = 0

left_laser = 0
right_laser = width - 1
# game loop
while True:

    clone_floor, clone_pos, direction = input().split()
    clone_floor = int(clone_floor)
    clone_pos = int(clone_pos)

    if (current_floor < clone_floor) :
        current_floor = clone_floor
        current_floor_blocked = 0

    #set destination for the current floor
    if (current_floor == exit_floor) :
        target_dest = exit_pos
    else :
        target_dest = elevator_arr[current_floor]  
    
    #use the first two turns to clear the spawn point
    if (current_turn == 1) :
        print ("WAIT")
    elif (target_dest < clone_pos and current_dir == "Right" and current_floor_blocked == 0) :
        print ("BLOCK")
        current_dir = "Left"
        current_floor_blocked = 1
    elif (target_dest > clone_pos and current_dir == "Left" and current_floor_blocked == 0) :
        print("BLOCK")
        current_dir = "Right"
        current_floor_blocked = 1
    else:
        print ("WAIT")

    current_turn += 1
    