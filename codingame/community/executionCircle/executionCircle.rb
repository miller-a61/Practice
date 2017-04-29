n, s = gets.split(" ").collect {|x| x.to_i}
d = gets.chomp

x = 2
while x*2 < n do
    x*=2
end

if d == "LEFT"
    answer = s + (2 * (n - x))
else
    answer = s - (2 * (n - x))
end

if answer < 0
    answer += n
end

if answer > n
    answer -= n 
end

puts answer