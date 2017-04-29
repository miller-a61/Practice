File.open(ARGV[0]).each_line do |line|
	p line.to_i.even? ? 1 : 0
end
