File.open(ARGV[0]).each do |line|
	line = line.split(';')
	num = line[1].split(',')
	num = num.map(&:to_i)
	num = num.sort

	answer = -1
	i = 0
	while i < num.length do
		if num[i] == num[i + 1]
			answer = num[i]
		end
		i += 1
	end
	puts answer

end

