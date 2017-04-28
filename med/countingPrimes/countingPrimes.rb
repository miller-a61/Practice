require 'prime'
File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(',')
	min = line[0].to_i
	max = line[1].to_i
	if min > max
		temp = min
		min = max
		max = temp
	end

	arr = Prime.first max
	arr2 = arr.find_all { |x| x >= min && x <= max  }
	p arr2.count
end
