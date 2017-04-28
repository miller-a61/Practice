File.open(ARGV[0]).each_line do |line|
	letterCount = 0
	ans = ""
	line.each_char {|c|
		if /[A-Za-z]/ =~ c
			if letterCount % 2 == 0
				ans += c.upcase
			else
				ans += c.downcase
			end
			letterCount += 1
		else
			ans += c
		end
	}
	puts ans
end
