File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split('|')
	iter = line[1].to_i
	line[0] = line[0].chomp
	sort = line[0].split.map(&:to_i)
	a = 0
	b = 1	
	while iter > 0
		if sort[a] > sort[b]
			temp = sort[b]
			sort[b] = sort[a]
			sort[a] = temp
			iter -= 1
			a = 0
			b = 1
		else
			a += 1
			b += 1
		end
	end
	puts sort.join(' ')		
end


