def nextLine(line)
    numbers = line.split
    xline = ''
    seen = 1
    prev = numbers.shift
    until numbers.empty?
        current = numbers.shift
        if current == prev
            seen += 1
        else
            xline += " #{seen} #{prev}"
            prev = current
            seen = 1
        end
    end
    xline += " #{seen} #{prev}"
end

line = gets
row = gets.to_i
while row > 1 do
    line = nextLine(line)
    row -= 1
end
puts line.strip