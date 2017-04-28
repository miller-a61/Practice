File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	if line.length <= 55
		puts line
	elsif line.length > 0
		sub = line[0..39].reverse
		#puts sub
		#puts sub.index(' ')
		spaceIndex = sub.index(' ') == nil ? 0 : sub.index(' ') + 1
		sub = sub.reverse
		puts sub[0..39-spaceIndex] + "... <Read More>"
	end
end
