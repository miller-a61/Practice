File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	grid = []
	answer = []
	row =line.split('|')
	gridDepth = 0
	row.each {|z| 
		y = z.split.map(&:to_i)
		gridDepth = y.length
		grid.push(z.split.map(&:to_i))}
	for i in 0..gridDepth - 1
		max = -1001
		for j in 0..grid.length - 1
			if grid[j][i] > max
				max = grid[j][i]
			end
		end
		answer.push(max)
	end	
	puts answer.join(' ')
end
