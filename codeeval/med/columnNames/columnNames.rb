File.open(ARGV[0]).each do |line|
	line = line.to_i
	answer = ''
	#three letter column names
	if line > 702
		if line % 676 == 0
			answer += ((line -1)/676 + 64).chr
		else
			answer += (line/676 + 64).chr
		end
	line -= (676 * (line/676))
	end
	#two letter column names
	if line > 26 
		if line % 26 == 0
			answer += ((line-1)/26 +64).chr 
		else
			answer += (line/26 + 64).chr 	
		end		
	end	
	#one letter column names
	if line % 26 == 0
		answer += 90.chr
	else	
		answer += (line % 26 +64).chr
	end

	puts answer

end
