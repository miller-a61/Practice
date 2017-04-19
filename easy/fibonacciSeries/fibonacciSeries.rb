File.open(ARGV[0]).each do |line|
	num = line.to_i
	sum = 0
	one = 1
	two = 1
	nxt = 0

	if num == 1 || num == 2
		p 1
	else
		for i in 1..num - 2
			#puts "#{one}, #{two}, #{nxt}, #{sum}"
			nxt = one + two
			one = two
			two = nxt
			sum +=nxt
			#puts "#{one}, #{two}, #{nxt}, #{sum}"
			#puts '-----------------------'
		end
		p nxt
	end
end
