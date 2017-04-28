File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(';')
	numDays = line[0].to_i
	days = line[1].split.map(&:to_i)
	profit = 0
	for i in 0..(days.length - numDays)
		sum = 0		
		for j in i..(i + numDays - 1)
			sum += days[j]
		end
		if sum > profit
			profit = sum
		end
	end
	puts profit	
end
