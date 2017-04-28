File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	if line != ""
		uni = line.split('').uniq.length
		if uni == 1
			puts 1
		else
			for i in 0..line.length - 1
				if i + 1 >= uni && line[0..i] == line[((i+ 1) * -1)..-1]
					puts i + 1
					break
				end
			end
		end
	end
end
