File.open(ARGV[0]).each do |line|
	x = line.split(' | ')
	y = x[0].split(' ').map(&:to_i)
	z = x[1].split(' ').map(&:to_i)

	output = y.zip(z).map{|pair| pair.reduce(&:*)} 

	puts output.join(' ')
end

