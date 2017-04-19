File.open(ARGV[0]).each_line do |line|
	newWords = []
	words = line.chomp.split
	words.each {|x| #puts x[0]
		newWords.push(x[0].upcase + x[1..-1])
	}
	puts newWords.join(' ')
end
