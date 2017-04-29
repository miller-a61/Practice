
def get_lines
	arr = Array.new	
	File.foreach(ARGV[0]).with_index do |line, i|	

	arr[i] = line
	#puts arr[i]
	end
	return arr
end

lines = get_lines
iterations = lines[0].to_i
start = lines.size
start -= 1

lines = lines.sort_by {|x| x.length}

while iterations > 0 do
	puts lines[start]
	iterations -= 1
	start -= 1
end




