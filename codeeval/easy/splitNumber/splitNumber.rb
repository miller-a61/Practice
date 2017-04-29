File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split
	opr = -1
	op = ''
	if line[1].include?('-')
		opr = line[1].index('-')
		op = '-'
	elsif line[1].include?('+')
		opr = line[1].index('+')
		op = '+'
	end
	first = line[0][0..opr - 1].to_i
	second = line[0][opr..-1].to_i
	if op == '-'
		p first - second
	else
		p first + second
	end
end
