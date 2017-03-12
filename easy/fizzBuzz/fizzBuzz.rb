File.open(ARGV[0]).each do |line|
	line = line.split(' ')
	w = line[0].to_i
	y = line[1].to_i
	z = line[2].to_i
	i = 1
	while i <= z do
		if i%w == 0 and i%y == 0
			line[i] = 'FB'
		elsif i%w == 0
			line[i] = 'F'
		elsif i%y == 0
			line[i] = 'B'
		else
			line[i] = i
		end
		i += 1
	end
	puts line[1..z].join(' ')
end

