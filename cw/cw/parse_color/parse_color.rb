File.open(ARGV[0]).each do |color|

	if color[0] == '#' and color.length == 8
		r = color[1..2].hex
		g = color[3..4].hex
		b = color[5..6].hex
	elsif color[0] == '#' and color.length == 5
		r = (color[1] + color[1]).hex
		g = (color[2] + color[2]).hex
		b = (color[3] + color[3]).hex
	else
		puts 'color'
	end
end
