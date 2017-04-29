# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@width, @height = gets.split(" ").collect {|x| x.to_i}

STDERR.puts @width
STDERR.puts @height

grid = Array.new
col = Array.new
row = ""

for i in 1..@height do
    line = gets.chomp
    grid[i] = line
end

for k in 0..@width - 1 do
    col[k] = 0
end

for b in 1..@height  do
    #STDERR.puts grid[b]
    j = 0
    grid[b].each_char {|c| #STDERR.puts c
        if c == "#"
            col[j] += 1
        end
        j += 1       
        }  
end

curHeight = @height

for m in 1..@height do
   row = ""
   
   for n in 0..@width - 1 do
        if col[n] >= curHeight
            row += "#"
        else
            row += "."
        end
       
   end
    puts row
    curHeight -= 1
end

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

