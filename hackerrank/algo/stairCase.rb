File.open(ARGV[0])
line = readlines

n = line[0]
n = n.to_i
	
i = 1

while i <= n do

puts ' ' * (n - i) + '#' * i

i += 1

end
