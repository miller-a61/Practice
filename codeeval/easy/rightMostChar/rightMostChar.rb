File.open(ARGV[0]).each_line do |line|
	lists = line.chomp.split(',')
	word = lists[0].reverse
	letter = lists[1]
	target = word.index(letter)
	ans = target != nil ? word.length - 1 - target : -1
	p ans
end

