File.open(ARGV[0]).each do |line|
	line = line.split(',').map(&:to_i)
	answer = 'False'

	if line[0] <= line[4] and line[4] <= line[2] and line[3] <= line[5] and line[5] <= line[1]
		answer = 'True'
	end
	if line[0] <= line[4] and line[4] <= line[2] and line[3] <= line[7] and line[7] <= line[1]
		answer = 'True'
	end
	if line[0] <= line[6] and line[6] <= line[2] and line[3] <= line[5] and line[5] <= line[1]
		answer = 'True'
	end
	if line[0] <= line[6] and line[6] <= line[2] and line[3] <= line[7] and line[7] <= line[1]
		answer = 'True'
	end
	if line[4] <= line[0] and line[2] <= line[6] and line[7] <= line[1] and line[3] <= line[5]
		answer = 'True'
	end
	puts answer
end
