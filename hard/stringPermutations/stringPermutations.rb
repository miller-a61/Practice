File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split('')
	i = line.length
	ans = []
	arr = line.to_a
	combos = arr.permutation(i).to_a
	combos.each{|x| ans.push(x.join(''))}
	ans = ans.sort
	puts ans.join(',')
end
