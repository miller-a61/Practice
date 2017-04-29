File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	upper = 0
	line.each_char{|c|
		c.ord > 64 && c.ord < 91 && upper += 1	
	}
	upperPct = upper.to_f * 100.0 / line.length.to_f
	lowerPct = 100.0 - upperPct
	puts "lowercase: %0.2f " % [lowerPct] + "uppercase: %0.2f"  % [upperPct]
end
