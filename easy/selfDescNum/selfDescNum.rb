File.open(ARGV[0]).each do |line|
	num = line.chomp.to_s
	sd = true
	num.each_char.with_index {|c,i| #puts "#{c},#{num.count i.to_s}"
		if c.to_i != (num.count i.to_s)
			sd = false
		end
	}
	p sd ? 1: 0
end

