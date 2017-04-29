File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split
	n = Math.sqrt(line.length).to_i

	arr = []

	row = ""
	for i in 0..n - 1
		for j in 1..n
			row += line[0]
			line.shift
		end
		arr[i] = row.split('')
		row = ""
	end

	arr = arr.transpose
	out = []
	arr.each {|x| out.push(x.reverse)}

	puts out.join(' ')
		
end
