File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	answer = ""
	line.each_char {|c| 
		if c.ord >= 97 && c.ord <=106
			answer += (c.ord - 97).to_s
		elsif c.ord >= 48 && c.ord <= 57
			answer += c
		end
	}
	puts answer.length == 0 ? "NONE" : answer
end
