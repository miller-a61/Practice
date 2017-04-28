require 'prime'
File.open(ARGV[0]).each_line do |line|
	arr = Prime.first line.to_i
	arr2 = arr.find_all { |x| x < line.to_i }
	puts arr2.join(',')
end
