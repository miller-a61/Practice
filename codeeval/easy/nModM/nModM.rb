File.open(ARGV[0]).each_line do |line|
	num = line.split(',').map(&:to_i)
	n = num[0]
	m = num[1]
	while n >= 0
		n -= m
	end
	p n == 0 ? n : n + m
end
