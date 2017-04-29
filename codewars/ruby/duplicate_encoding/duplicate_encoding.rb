File.open(ARGV[0]).each do |line|

	line.delete!("\n")
	line = line.downcase

	i = 1
	ans = ""
	while i < line.length + 1 do
		char = line[0]
		search = line[1..-1]
		
		ans += search[char] ? ')' : '('

		line = line[1..-1] + line[0]
		i += 1
	end
	ans
end
