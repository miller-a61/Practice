File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	ans = ""
	if line.length > 0	
		line = line.chomp.split('|')
		cypher = line[0]
		letters = line[1].split.map(&:to_i)
		letters.each {|x|			
		ans += cypher[x-1]
		}
	end
	puts ans
end
