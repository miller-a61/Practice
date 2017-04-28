require 'prime'
File.open(ARGV[0]).each_line do |line|
	line = line.chomp.to_i
	arr = Prime.first line	
	arr2 = arr.find_all { |x| x <= line  }
	pow = []
	i = 2
	while (2**i - 1) < line
		pow.push(2**i - 1)
		i += 1
	end
	comb = arr2 & pow
	if line <= 2047	
		puts comb.join(', ')
	else
		puts comb.join(', ') + ', 2047'
	end
end


