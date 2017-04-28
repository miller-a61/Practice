
File.open(ARGV[0]).each_line do |line|
	source = line.chomp.split.map(&:to_i)

	search = ([0,10] + source).sort
	val = 0
	for i in 1..source.length
		if search[i] != search[i - 1] && search[i] != search[i + 1] && val ==0
			val = search[i]
			#puts "found: #{search[i]}"
		end
	end
	#puts source.join(':')
	puts val == 0 ? 0 : source.index(val) + 1

end
