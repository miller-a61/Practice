File.open(ARGV[0]).each_line do |line|
	arr = line.chomp.split(':')
	nums = arr[0].split
	swaps = arr[1].split(',')
	
	swaps.each {|x| 
		y = x.split('-')
		a = y[0].to_i
		b = y[1].to_i
		
		temp = nums[a]
		nums[a] = nums[b]
		nums[b] = temp
		}
	puts nums.join(' ')

end
