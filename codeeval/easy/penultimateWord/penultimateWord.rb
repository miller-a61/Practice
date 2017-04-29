File.open(ARGV[0]).each_line do |line|
	line = line.split
	puts line[-2]
end
