# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i
#STDERR.puts @n

inputs = gets.split(" ").map &:to_i
for i in 0..(@n-1)
    v = inputs[i].to_i
    STDERR.puts "v = #{v}"
end

max_loss = 0
pos = -1
j = inputs.length - 1

while pos != 0 do
    
    top = inputs[0..j].max
    pos = inputs.index(top)
     
    bottom = inputs[pos..inputs.length].min   

    if bottom != nil
        loss = bottom - top
        (loss < max_loss) && max_loss = loss    
    end   
    
    j = inputs.index(top) - 1

end
puts max_loss