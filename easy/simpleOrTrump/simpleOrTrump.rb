def rankPts (rank)
	case rank
	when 'A' then 14
	when 'K' then 13
	when 'Q' then 12
	when 'J' then 11
	else rank.to_i
	end
end

File.open(ARGV[0]).each_line do |line|
	line = line.chomp.split('|')
	cards = line[0].split
	trump = line[1].strip
	rankA = rankPts(cards[0][0..-2])
	if cards[0][-1] == trump 
		suitA = 20
	else
		suitA = 0
	end
	rankB = rankPts(cards[1][0..-2])
	if cards[1][-1] == trump 
		suitB = 20 
	else
		suitB = 0
	end
	
	if rankA + suitA == rankB + suitB
		puts cards.join(' ')
	elsif rankA + suitA > rankB + suitB
		puts cards[0]
	else
		puts cards[1]
	end
	#puts "#{rankA}:#{suitA}:#{rankB}:#{suitB}:#{trump}|"
end
