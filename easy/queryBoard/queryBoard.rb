def shut_up
	too_loud, $VERBOSE = $VERBOSE , nil
	yield
ensure
	$VERBOSE = too_loud
end

def setCol (grid, col, num)

	for i in 0..grid.length - 1
		grid[i][col] = num
	end
end

def setRow (grid, row, num)

	for i in 0..grid.length - 1
		grid[row][i] = num
	end
end

def queryCol (grid, col)
	sum = 0
	for i in 0..grid.length - 1
		sum += grid[i][col]
	end

	puts sum
end

def queryRow (grid, row)
	sum = 0
	for i in 0..grid.length - 1
		sum += grid[row][i]
	end

	puts sum
end

shut_up do
	grid = Array.new(256,0){Array.new(256,0)}


	File.open(ARGV[0]).each_line do |line|
		line = line.chomp.split
	
		case when line[0] == 'SetCol' then setCol(grid, line[1].to_i, line[2].to_i)
		     when line[0] == 'SetRow' then setRow(grid, line[1].to_i, line[2].to_i)
        	     when line[0] == 'QueryCol' then queryCol(grid, line[1].to_i)
        	     when line[0] == 'QueryRow' then queryRow(grid, line[1].to_i)
			else "Error"
		end
	end

end
