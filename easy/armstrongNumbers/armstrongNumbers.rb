File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	pow = line.length
	str = line
	digits = line.split('').map(&:to_i)
	num = str.to_i
	sum = 0
	digits.each {|x| sum += x ** pow}
	if sum == num 
		puts "True" 
	else
		puts "False"
	end
end
