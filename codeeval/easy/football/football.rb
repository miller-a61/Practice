File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	srch = []
	answer = []
	list = line.split('|')
	list.each {|z| srch.push(z.split.map(&:to_i))}
	country = line.gsub(/\s\|\s/, ' ').split.map(&:to_i).uniq.sort
	country.each {|x| 
		fan = []
		srch.each.with_index{|y, i|
			if y.index(x) != nil
				fan.push(i + 1)
			end
		}
		answer.push(x.to_s + ':' + fan.join(',') + ';')
	}
	puts answer.join(' ')	
end


