File.open(ARGV[0]).each_line do |line|
	arr = line.chomp.split('|')
	a = arr[0].strip
	b = arr[1].strip
	bugs = 0
	for i in 0..a.length - 1
		#puts "#{a[i]}, #{b[i]}, #{bugs}"
		a[i] != b[i] && bugs += 1
	end
	if bugs == 0
		puts "Done"
	elsif bugs <= 2
		puts "Low"
	elsif bugs <= 4
		puts "Medium"
	elsif bugs <= 6
		puts "High"
	else
		puts "Critical"
	end	
end
