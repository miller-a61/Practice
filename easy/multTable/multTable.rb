def print_line (arr)
	txt = ''
	arr.each {|x| txt += ' ' * (4 - x.to_s.length) + x.to_s}
	puts txt	
end

base = [*1..12]

base.each {|z| nxt = base.collect {|n| n * z}
	print_line(nxt)}

