sum = 0
File.open(ARGV[0]).each do |line|
	sum += line.to_i	
end
p sum

