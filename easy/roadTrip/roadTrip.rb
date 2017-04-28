File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(';')
	dist = []
	answer = []
	line.each {|x| dist.push(x[x.index(',') + 1..-1].to_i)}
	dist = dist.sort
	start = 0
	dist.each {|y|
		answer.push(y - start)
		start = y
	}
	puts answer.join(',')
end
