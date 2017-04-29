File.open(ARGV[0]).each_line do |line|
	line = line.chomp.downcase.split('')
	occur = Array.new(26, 0)
	line.each {|c| 
		spot = c.ord - 97
		if spot >= 0 && spot <= 25
			occur[spot] += 1
		end
	}
	occur = occur.sort.reverse
	answer = 0
	occur.each.with_index {|x, i|
		answer += (26 - i) * x}
	puts answer
end
