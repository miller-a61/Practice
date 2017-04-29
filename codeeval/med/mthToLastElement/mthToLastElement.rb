File.open(ARGV[0]).each do |line|
	line = line.split(' ')

	loc = line[line.length-1].to_i
	if loc < line.length	
		puts line[line.length - loc -1]
	end
end

