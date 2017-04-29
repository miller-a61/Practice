File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split(';')
	arr = line[0].split(',').map(&:to_i)
	target = line[1].to_i
	pairs = []
	for i in 0..arr.length - 1
		for j in i..arr.length - 1
			if arr[i] + arr[j] == target && i != j
				pairs.push(arr[i].to_s + ',' + arr[j].to_s)
			end
		end
	end
	puts pairs.empty? ? "NULL" : pairs.join(';')
end
