File.open(ARGV[0]).each_line do |line|
	lists = line.split(';')
	setOne = lists[0].split(',').map(&:to_i)
	setTwo = lists[1].split(',').map(&:to_i)
	intsct = []
	setOne.each {|x| 
		if setTwo.index(x) != nil
		intsct.push(x)
		end
	}
	puts intsct.join(',')
end

