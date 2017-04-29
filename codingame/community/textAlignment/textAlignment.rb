def left (line)
    puts line    
end

def right (line, len)
    
    pad = len - line.length
    puts " " * pad + line
    
end

def center (line, len)
    
    lpad = (len - line.length) / 2
    puts " " * lpad + line 

end

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

lines = Array.new
maxLen = 0

@alignment = gets.chomp
STDERR.puts @alignment

@n = gets.to_i
@n.times do
    text = gets.chomp
    lines.push(text)
    text.length > maxLen && maxLen = text.length
end

#STDERR.puts maxLen

lines.each {|x| #STDERR.puts x

    case @alignment
        when "LEFT" then left(x)
        when "RIGHT" then right(x, maxLen)
        when "CENTER" then center(x, maxLen)
        when "JUSTIFY" then justify(x, maxLen)
    end
}
