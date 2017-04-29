File.open(ARGV[0]).each_line do |line|
	arr = line.split(',')
	allCandy = 0
	allKids = 0
	for i in 0..2
		x = arr[i]
		item = x[0..x.index(':')-1].strip
		num = x[x.index(':') + 1..-1].to_i
		case item when "Vampires" then candy = 3 
			when "Zombies" then candy = 4
			when "Witches" then candy = 5
			else ''
			end
		allCandy += candy * num
		allKids += num
	end
	houses = arr[3][x.index(':') + 1..-1].to_i
	p (allCandy * houses)/allKids
end
