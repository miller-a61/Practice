File.open(ARGV[0]).each_line do |line|
	arr = line.chomp.split
	x = 0
	ans = ""
	while x < arr.length
		if arr[x] == "00"
			ans += "1" * arr[x + 1].length
		else
			ans += arr[x + 1]
		end
		x += 2
	end
	p ans.to_i(2)
end
