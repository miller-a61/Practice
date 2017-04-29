File.open(ARGV[0]).each do |line|
	line.chomp
	line = line.split(' | ')

	temp = line[1]
	trump = temp[0]

	line = line[0].split(' ')
	
	fr = line[0].length == 2 ? line[0][0] : line[0][0..1]
	sr = line[1].length == 2 ? line[1][0] : line[1][0..1]
	fs = line[0][-1]
	ss = line[1][-1]

	fr = fr.gsub(/J/, '11')
	fr = fr.gsub(/Q/, '12')
	fr = fr.gsub(/K/, '13')
	fr = fr.gsub(/A/, '14')

	sr = sr.gsub(/J/, '11')
	sr = sr.gsub(/Q/, '12')
	sr = sr.gsub(/K/, '13')
	sr = sr.gsub(/A/, '14')


	if fs == trump
		frn = fr.to_i +  20
	end

	if ss == trump
		sr = sr.to_i + 20
	end

	if fr.to_i > sr.to_i
		puts line[0]
	elsif sr.to_i > fr.to_i
		puts line[1]
	else
		puts line[0] + ' ' + line[1]
	end

end
