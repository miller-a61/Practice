File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	words = []
	inword = false
	line.each_char {|c| #puts c
		#puts "#{c}, #{c.match(/^[[:alpha:]]$/)}"
		words.push(c.match(/^[[:alpha:]]$/))
	}
	puts words.join('-')
end
