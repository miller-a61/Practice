File.open(ARGV[0]).each do |line|
	line = line.split(',').map(&:to_i)
	bin = line[0].to_s(2)
	puts bin[bin.length - line[1]] == bin[bin.length - line[2]] ? 'true' : 'false'
end
