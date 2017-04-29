STDOUT.sync = true # DO NOT REMOVE
# The while loop represents the game.
# Each iteration represents a turn of the game
# where you are given inputs (the heights of the mountains)
# and where you have to print an output (the index of the mountain to fire on)
# The inputs you are given are automatically updated according to your last actions.


# game loop
loop do
    i = 0
    arr = Array.new
    8.times do
        mountain_h = gets.to_i # represents the height of one mountain.
        arr[i] = mountain_h
        i += 1
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."

    idx = arr.index(arr.max)
    puts idx

end