File.open(ARGV[0]).each do |line|
	line = line.split(' ')
	line = line.reverse
	puts line.join(' ')
end
