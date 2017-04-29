File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split()
	word = line[0]
	bin = line[1]
	ans = ""
	for i in 0..word.length - 1
		#puts "#{word[i]}, #{bin[i]}"
		if bin[i] == "1"
			ans += word[i].upcase
		else
			ans += word[i]
		end
	end
	puts ans
end
