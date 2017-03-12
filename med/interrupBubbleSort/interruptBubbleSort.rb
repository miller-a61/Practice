File.open(ARGV[0]).each do |line|
	line = line.split(' | ')
	num = line[0].split(' ')
	num = num.map(&:to_i)
	iter = line[1].to_i	
	iter = [num.length, iter].min
	
	i = 1	
	while i <= iter do
		j = 0
		while j < num.length - 1 do
			if num[j] > num[j+1]
				temp = num[j]
				num[j] = num[j + 1]
				num[j+1] = temp
			end
			j+=1
		end
		i += 1
	end
	puts num.join(' ')

end
