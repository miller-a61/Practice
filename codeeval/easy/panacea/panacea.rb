File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split('|')
	hx = line[0].split
	bin = line[1].split
	virus = 0
	cure = 0	
	hx.each {|x| virus += x.hex}
	bin.each {|y| cure += y.to_i(2)}
	puts cure >= virus ? "True" : "False"
end
