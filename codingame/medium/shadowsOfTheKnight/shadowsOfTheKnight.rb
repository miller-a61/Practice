STDOUT.sync = true # DO NOT REMOVE
width, height = gets.split(" ").collect {|x| x.to_i}
turns = gets.to_i # maximum number of turns before game over.
STDERR.puts "width: #{width}, height: #{height}, max turns: #{turns}"

batmanX, batmanY = gets.split(" ").collect {|x| x.to_i}
STDERR.puts "batman: x: #{batmanX}, y: #{batmanY}"

heightMin = 0
heightMax = height
widthMin = 0
widthMax = width

# game loop
loop do
    bomb_dir = gets.chomp # the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)
    
    STDERR.puts bomb_dir
    xFloor = true
    yFloor = true
    #R/L x-axis
    if bomb_dir.index('R') != nil
        if xFloor == true
            newX = ((batmanX + widthMax)/2).floor
            xFloor = false
        else
            newX = ((batmanX + widthMax)/2).ceil
            xFloor = true
        end
        
        if widthMin < batmanX
            widthMin = batmanX
        end
    end
    
    if bomb_dir.index('L') != nil
        if xFloor == true
            newX = ((batmanX + widthMin)/2).floor
            xFloor = false
        else
            newX = ((batmanX + widthMin)/2).ceil
            xFloor = true
        end
        if widthMax > batmanX
            widthMax = batmanX
        end
    end
    
    if bomb_dir.index('R') == nil && bomb_dir.index('L') == nil
        newX = batmanX
        widthMax = batmanX
        widthMin = batmanX
    end
    
    #U/D y-axis
    if bomb_dir.index('D') != nil
        STDERR.puts "D if, #{yFloor}"
        if yFloor == true
            newY = ((batmanY + heightMax)/2).floor
            yFloor = false
        else
            newY = ((batmanY + heightMax)/2).ceil
            yFloor = true
        end
        if heightMin < batmanY
            heightMin = batmanY
        end
    end

    if bomb_dir.index('U') != nil
         if yFloor == true
            newY = ((batmanY + heightMin)/2).floor
            yFloor = false
        else
            newY = ((batmanY + heightMin)/2).ceil
            yFloor = true
        end
        if heightMax > batmanY
            heightMax = batmanY
        end
    end

    if bomb_dir.index('D') == nil && bomb_dir.index('U') == nil
        newY = batmanY
        heightMax = batmanY
        heightMin = batmanY
    end

    puts "#{newX} #{newY}"
    
    batmanX = newX
    batmanY = newY
    
    STDERR.puts "batman: #{batmanX}, #{batmanY}, height: #{heightMin}, #{heightMax}, width: #{widthMin}, #{widthMax}"
end