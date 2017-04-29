# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # the number of temperatures to analyse
@temps = gets.chomp # the n temperatures expressed as integers ranging from -273 to 5526

temps = @temps.split(' ')

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
closest = temps[0]

if temps.length == 0
    closest = 0
else
    for i in 1..temps.length - 1 do
        tst = temps[i]
        if closest.to_i.abs == tst.to_i.abs and closest.to_i < 0
            closest = temps[i]
        elsif closest.to_i.abs > tst.to_i.abs
           closest = temps[i]
       end
    end
end
puts closest