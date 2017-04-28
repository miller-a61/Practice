File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split
	numZeros = line[0].to_i
	upperBound = line[1].to_i
	matchFound = 0
	for i in 1..upperBound
		binary = i.to_s(2)
		if binary.count('0') == numZeros
			matchFound += 1
		end
	end
	p matchFound
end
