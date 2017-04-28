File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split
	longest = ""
	len = 0
	line.each {|x|
		if x.length > len
			longest = x
			len = x.length
		end
	}
	#puts longest
	step = []
	for i in 0..longest.length - 1
		toAdd = "*" * i + longest[i]
		step.push(toAdd)
	end
	puts step.join(' ')
end
