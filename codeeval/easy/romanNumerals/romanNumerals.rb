File.open(ARGV[0]).each do |line|
	line = line.to_i
	ans = ''
	factor = line/1000
	
	#thousand
	ans = 'M' * factor
	line = line - (1000 * (line/1000))

	#five hundred
	factor = line/500
	ans = ans + ( 'D' * factor )
	line = line - (500 * (line/500))

	#one hundred
	factor = line/100
	ans = ans + ( 'C' * factor )
	line = line - (100 * (line/100))
	
	#fifty
	factor = line/50
	ans = ans + ( 'L' * factor )
	line = line - (50 * (line/50))

	#ten
	factor = line/10
	ans = ans + ( 'X' * factor )
	line = line - (10 * (line/10))
	
	#five 
	factor = line/5
	ans = ans + ( 'V' * factor )
	line = line - (5 * (line/5))

	#one hundred
	factor = line/1
	ans = ans + ( 'I' * factor )
	line = line - (1 * (line/1))
	
	ans = ans.sub('DCCCC', 'CM')
	ans = ans.sub('CCCC',  'CD')
	ans = ans.sub('LXXXX', 'XC')
	ans = ans.sub('XXXX',  'XL')
	ans = ans.sub('VIIII', 'IX')
	ans = ans.sub('IIII',  'IV')

	puts ans

end

