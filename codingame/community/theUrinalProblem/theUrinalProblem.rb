n = gets.to_i
b = gets.chomp
STDERR.puts "n: #{n}, b: #{b}"

farthest = b[0] == "U" ? b.index("!") - 1: 0
pos = 0

STDERR.puts "farthest to start: #{farthest}"

for i in 1..(b.length - 1) do
    left = b[0, i + 1].reverse
    right = b[i , n]
    STDERR.puts "#{b[i]} #{left} #{right}"
    
    lindex = left[0] == "U" ? left.index("!") : "0"
    rindex = right[0] == "U" ? right.index("!") : "0"
    
    lindex==nil&&lindex = i
    lindex = lindex.to_i
    #rindex==nil&&rindex = n.length - i
    rindex = rindex.to_i
    
    STDERR.puts "lindex: #{lindex}, rindex: #{rindex}"
begin
    if lindex > farthest && rindex > farthest
        pos = i
        if lindex > rindex
            farthest = rindex
        else
            farthest = lindex
        end
    end
end

end

b = b.reverse
if b[0] == "U" 
    rdist = b.index("!")
    if rdist > farthest
        pos = n - 1
    end
    STDERR.puts "-------"
    
end


#STDERR.puts "#{farthest}"

puts pos