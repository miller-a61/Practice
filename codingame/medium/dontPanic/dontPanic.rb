STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# nb_floors: number of floors
# width: width of the area
# nb_rounds: maximum number of rounds
# exit_floor: floor on which the exit is found
# exit_pos: position of the exit on its floor
# nb_total_clones: number of generated clones
# nb_additional_elevators: ignore (always zero)
# nb_elevators: number of elevators
@nb_floors, @width, @nb_rounds, @exit_floor, @exit_pos, @nb_total_clones, 
    @nb_additional_elevators, @nb_elevators = gets.split(" ").collect {|x| x.to_i}

STDERR.puts "floors: #{@nb_floors}, width: #{@width}, rounds: #{@nb_rounds}"
STDERR.puts "exit floor: #{@exit_floor}, exit pos: #{@exit_pos}, clones: #{@nb_total_clones}"
STDERR.puts "elevators #{@nb_elevators}"

elevator_floor = -1
elevator_pos = -1
elevator_arr = Array.new

@nb_elevators.times do
    # elevator_floor: floor on which this elevator is found
    # elevator_pos: position of the elevator on its floor
    elevator_floor, elevator_pos = gets.split(" ").collect {|x| x.to_i}
    STDERR.puts "elevator_floor: #{elevator_floor}, elevator Pos: #{elevator_pos}"
    elevator_arr[elevator_floor] = elevator_pos
end

current_floor = 0
current_dir = "Right"
current_turn = 1
target_dest = -1
current_floor_blocked = false

left_laser = 0
right_laser = @width - 1

# game loop
loop do
    # clone_floor: floor of the leading clone
    # clone_pos: position of the leading clone on its floor
    # direction: direction of the leading clone: LEFT or RIGHT
    clone_floor, clone_pos, direction = gets.split(" ")
    clone_floor = clone_floor.to_i
    clone_pos = clone_pos.to_i
    
    STDERR.puts "clone floor: #{clone_floor}, clone_pos: #{clone_pos}"
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    if current_floor < clone_floor
        current_floor = clone_floor
        current_floor_blocked = false
    end


    #set destination for the current floor
    if current_floor == @exit_floor
        target_dest = @exit_pos
        STDERR.puts "set exit dest #{target_dest}"
    else
        target_dest = elevator_arr[current_floor]  
        STDERR.puts "set elevator dest: #{target_dest} "
    end
    
    STDERR.puts "target dest: #{target_dest}"
    #use the first two turns to clear the spawn point
    if current_turn == 1
        puts "WAIT"
    elsif target_dest < clone_pos && current_dir == "Right" && current_floor_blocked == false
        puts "BLOCK"
        current_dir = "Left"
        current_floor_blocked = true
    elsif target_dest > clone_pos && current_dir == "Left" && current_floor_blocked == false
        puts "BLOCK"
        current_dir = "Right"
        current_floor_blocked = true
    else
        puts "WAIT"
    end
    
    current_turn += 1
    
end