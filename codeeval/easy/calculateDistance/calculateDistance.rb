File.open(ARGV[0]).each_line do |line|
	line = line.gsub(/\(/,'').gsub(/\)/,'').gsub(/\,/,'')
	coord = line.split.map(&:to_i)
	x1 = coord[0]
	x2 = coord[2]
	y1 = coord[1]
	y2 = coord[3]
	dist = Math.sqrt( (x1 - x2)**2 + (y1 - y2)**2 )
	p dist.to_i
end
