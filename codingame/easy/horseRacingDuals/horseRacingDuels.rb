# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

horses = Array.new

@n = gets.to_i
@n.times do
    horses.push(gets.to_i)
end

horses = horses.sort

len = horses.length - 2 


dist = (horses[0] - horses[1]).abs

for i in 1..len
   try =  (horses[i] - horses[i + 1]).abs
   
   dist = try < dist ? try : dist
end

puts dist