File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(',').map(&:to_i)
	#puts line.join(':')
	longest = -99999999999
	for i in 0..line.length - 1
		sum = 0
		for j in i..line.length - 1
			sum += line[j]
			if sum > longest
				longest = sum
			end
		end
	end
	p longest
end
