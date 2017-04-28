File.open(ARGV[0]).each_line do |line|
	line = line.chomp.downcase
	ans = ""
	word = false	
	for i in 0..line.length - 1
		x = line[i].ord
		if x > 96 && x < 123
			ans += line[i]
			word = true
		elsif word == true
			ans += " "
			word = false
		end
	end
	puts ans
end
