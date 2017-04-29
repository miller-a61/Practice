File.open(ARGV[0]).each do |line|
	line = line.split(', ')
	phrase = line[0]
	rep = line[1].split('')	

	i = 0
	while i < rep.length do
		phrase = phrase.gsub(rep[i], '')
		i += 1
	end
	puts phrase
end
