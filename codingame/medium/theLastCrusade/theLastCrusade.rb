STDOUT.sync = true # DO NOT REMOVE

def map_dest (yi, xi, pos, map)
    
    STDERR.puts "map_dest: yi: #{yi}, xi: #{xi}, pos: #{pos}, map: #{map}"
    
    if (map == "1" || map == "3" || map == "7" || map == "8" || map == "9" || map == "12" || map == "13")
       yi += 1     
    end  
    
    if (map == "2" || map == "6") && pos == "LEFT"
        xi += 1
    end
    
    if (map == "2" || map == "6") && pos == "RIGHT"
        xi -= 1
    end
    
    if (map == "4" || map == "10") && pos == "TOP"
        xi -= 1
    end
    
    if ((map == "5" || map == "11") && pos == "TOP")
        xi += 1
    end
    
    if (map == "4" && pos == "RIGHT")
        yi += 1
    end
    
    if (map == "5" && pos == "LEFT")
        yi += 1
    end    
    
    STDERR.puts "map_dest: yi: #{yi}, xi: #{xi}, pos: #{pos}, map: #{map}"
    
    new_loc = "#{xi} #{yi}"
    
end

w, h = gets.split(" ").collect {|x| x.to_i}
#STDERR.puts "w: #{w}, h: #{h}"

grid = Array.new

for i in 1..h do
    line = gets.chomp # represents a line in the grid and contains W integers. Each integer represents one room of a given type.
    #STDERR.puts line
    
    grid[i - 1] = line.split

end
ex = gets.to_i # the coordinate along the X axis of the exit (not useful for this first mission, but must be read).


# game loop
loop do
    xi, yi, pos = gets.split(" ")
    xi = xi.to_i
    yi = yi.to_i
    
    map = grid[yi][xi]
    
    puts map_dest(yi, xi, pos, map)

end