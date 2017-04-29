File.open(ARGV[0]).each_line do |line|
	words = line.chomp.split(';')
	answer = ""
	words.each {|x|
		case x when 'zero' then ans = '0'
			when 'one' then ans = '1'
			when 'two' then ans = '2'
			when 'three' then ans = '3'
			when 'four' then ans = '4'
			when 'five' then ans = '5'
			when 'six' then ans = '6'
			when 'seven' then ans = '7'
			when 'eight' then ans = '8'
			when 'nine' then ans = '9'
			else ''
		end
		answer += ans
	}
	puts answer
end
