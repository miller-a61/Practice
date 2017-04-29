File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	if line == "1"
		p 1
	else
		done = false
		num = []
		esc = 0
		while done == false
			x = line.split('')
			sum = 0
			x.each {|i| j = i.to_i
				sum += j * j }				
			if sum == 1
				p 1
				done = true
			elsif num.include?(sum)
				p 0
				done = true
			else
				num.push(sum)
			end
			
			line = sum.to_s

		end
	end
end
