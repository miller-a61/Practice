File.open(ARGV[0]).each_line do |line|
	arr = line.split
	ans = []
	arr.each {|x| ans.push(x[-1] + x[1..-2] + x[0])}
	puts ans.join(' ')
end
