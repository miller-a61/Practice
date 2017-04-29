

def justify (line, len)
    toPad = len - line.length
    words = line.split
    gaps = words.length - 1
    spaces = " " * (toPad / gaps + 1)
    output = ""
    extraSpace = spaces + " "
    
    extras = gaps - ( toPad % gaps)
    y = 0
    
    words.each {|x|
        output += y < extras ? x + spaces : x + extraSpace
        y +=1
    }
    
    puts output.rstrip
    
end

