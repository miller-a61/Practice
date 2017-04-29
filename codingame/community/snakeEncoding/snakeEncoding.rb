@size = gets.to_i
@shifts = gets.to_i
lines = Array.new
tiles = Array.new

@size.times do
    line = gets.chomp
    lines.push(line)
end

for x in 0..@size - 1
    if x % 2 == 0 #up
        z = @size - 1
        while z >= 0
            tiles.push(lines[z][x])
            z -= 1
        end
    else #down
        for y in 0..@size - 1
            tiles.push(lines[y][x])
        end
    end
end

@shifts.times do
    tiles.unshift(tiles.pop)
end

#reuse lines for output
for i in 0..@size - 1
    lines[i] = ""
end

#unpivot from long array to grid
for x in 0..@size - 1
    if x % 2 == 0 #up
        z = @size - 1
        while z >= 0
            STDERR.puts "#{x}, #{z}, #{@size} #{(x * @size) + @size - 1 - z}"
            lines[z] += tiles[(x * @size) + @size - 1 - z]
            z -= 1
        end
    else #down
        for y in 0..@size - 1
            lines[y] += tiles[(x * @size) + y]
        end
    end
end

lines.each {|x| puts x}
