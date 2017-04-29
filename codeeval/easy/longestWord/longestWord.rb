File.open(ARGV[0]).each_line do |line|
	arr = line.chomp.split
	longest = 0
	ans = ""
	arr.each {|x|
		if x.length > longest
			ans = x
			longest = x.length
		end
	}
	puts ans
end
