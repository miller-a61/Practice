STDOUT.sync = true # DO NOT REMOVE
oldX, oldY, tLeft, tRight, tHeight, firstX, firstY, highPt = -1
fromDir = ""
allY = {}

@surface_n = gets.to_i 
@surface_n.times do
    land_x, land_y = gets.split(" ").collect {|x| x.to_i}
    STDERR.puts "#{land_x}, #{land_y}"
    if land_y == oldY
        tLeft = oldX
        tRight = land_x
        tHeight = oldY
    end
    oldX = land_x
    oldY = land_y
    allY.store(land_x, land_y)
end

STDERR.puts "Landing Zone Range: Between #{tLeft} and #{tRight}, Landing Height #{tHeight}"

slowDown = false
firstTurn = true
# game loop
loop do
    x, y, h_speed, v_speed, fuel, rotate, power = gets.split(" ").collect {|x| x.to_i}

    if firstTurn == true
        firstX = x
        firstY = y
        firstTurn = false
    end
    
    highPt = -1
    
    #check for a high mountain between you and zone
    if x < tLeft
        allY.each {|key,value|
            if x < key && key < tLeft && value > highPt
                highPt = value
            end}
    end

    if x > tRight
        allY.each {|key,value|
            if tRight < key && key < x && value > highPt
                highPt = value
            end}
    end
    
    newAngle = 1
    
    if x < tLeft
        ang = -1
    elsif x > tRight 
        ang = 1
    else
        ang = 0
    end
    
    if slowDown == false
        newAngle = 22 * ang
    end
    
    if h_speed > 40 
        newAngle = 60
        slowDown = true
    end
    
    if h_speed < -40
        newAngle = -60
        slowDown = true
    end
    
    if x > tLeft - 500 && h_speed > 4 && h_speed <= 40
        newAngle = 22
        slowDown = true
    end
    
    if x < tRight + 500 && h_speed >= -40 && h_speed < -4
        newAngle = -22
        slowDown = true
    end
    
    if h_speed == 0 && x > tRight
        newAngle = 22
    end
    
    if h_speed == 0 && x < tLeft
        newAngle = -22
    end
        
    newThrust = 4

    if x > tLeft && x < tRight && h_speed <= 5 && h_speed >= -5 && v_speed > -35
        newThrust = 0
    end
    
    if y < tHeight +50 && (x < tLeft - 500 || x > tRight + 500) && (h_speed > -20 && h_speed < 20)
        newAngle = 0
    end
    
    #avoid high mtn between you and landing point
    if y < highPt + 500
        newAngle = 0
    end
    
    if y > 2800
        newThrust = 2
    end
    
    #landing
    if y < tHeight + 750 && x > tLeft && x < tRight
        newAngle = 0
    end
    
    puts "#{newAngle} #{newThrust}"
    
    if h_speed > -20 && h_speed < 20
        slowDown = false
    end
    
end