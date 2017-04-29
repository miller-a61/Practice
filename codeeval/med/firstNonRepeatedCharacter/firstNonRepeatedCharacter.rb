File.open(ARGV[0]).each do |line|

	line.delete!("\n")
	i = 1
	found = 0
	while i < line.length + 1 and found == 0 do
		char = line[0]
		search = line[1..-1]
		if !search.include? char
			puts line[0]
			found = 1
		end
		line = line[1..-1] + line[0]
		i += 1
	end
end

