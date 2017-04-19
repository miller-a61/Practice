File.open(ARGV[0]).each do |line|
	digits = line.split('').map(&:to_i)
	sum = 0
	digits.each {|x| sum += x}
	p sum
end
