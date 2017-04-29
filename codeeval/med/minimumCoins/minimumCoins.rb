File.open(ARGV[0]).each do |line|
	line = line.to_i
	sum = 0

	sum += line/5
	sum += line % 5 / 3
	sum += line % 5 % 3
	puts sum
end
