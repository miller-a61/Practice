File.open(ARGV[0]).each do |line|
	line = line.split(',')
	answer = 0
	line[1].delete!("\n")

	if line[0].length >= line[1].length
		start = line[0].length - line[1].length
		subs = line[0][start..-1]
		match = line[1]

		x = subs.hash
		y = match.hash

		if x == y
			answer = 1
		end

	end

	puts answer
end
