File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(',')
	word = []
	num = []
	line.each {|x| 
		if x[0].ord >= 48 && x[0].ord <=57
			num.push(x)
		else
			word.push(x)
		end
	}
	if word.length > 0 && num.length > 0
		ans = word.join(',') + '|' + num.join(',') 
		puts ans
	elsif word.length > 0
		puts word.join(',')
	else 
		puts num.join(',')
	end
end
