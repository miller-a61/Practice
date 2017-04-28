File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(',')
	unq = line.uniq
	min = line.length/2
	answer = 'None'
	unq.each {|x| 
		if line.count(x) >= min
			answer = x
		end
	}
	puts answer		
end
