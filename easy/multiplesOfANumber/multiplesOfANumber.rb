File.open(ARGV[0]).each do |line|
	line = line.split(',')
	x = line[0].to_i
	n = line[1].to_i
	mult = 1
	check = 0
	while check < x do
		check = n * mult
		mult += 1
	end
	puts check
end
