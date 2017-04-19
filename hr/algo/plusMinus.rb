File.open(ARGV[0])
	line = readlines
	
	arr = line[1].split(' ').map(&:to_f)
	len = arr.length.to_f
	pos = arr.count{|x| x > 0}/len
	neg = arr.count{|x| x < 0}/len
	zero = arr.count{|x| x == 0}/len

	pos = pos.round(6)
	neg = neg.round(6)
	zero = zero.round(6)

	puts pos
	puts neg
	puts zero

