File.open(ARGV[0]).each_line do |line|
	line = line.chomp.gsub(' ','')
	num = line.split('').map(&:to_i)
	sum = 0
	num.each.with_index {|x, i|
		if i % 2 == 0
			sum += x * 2
		else 
			sum += x
		end
	}
	if sum % 10 == 0 
		puts "Real" 
	else
		puts "Fake"
	end
	#puts sum
end
