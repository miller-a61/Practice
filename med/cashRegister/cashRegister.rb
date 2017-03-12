File.open(ARGV[0]).each do |line|
	line = line.split(';').map(&:to_f)
	price = line[0].round(2)
	paid = line[1].round(2)
	answer = ''	

	if price > paid
		answer += 'ERROR,'
		change = 0.00
	end
	if price == paid
		answer += 'ZERO,'
		change = 0.00
	end

	if paid > price
		change = paid - price
	end

	if change >= 99.999
		answer += 'ONE HUNDRED,'
		change -= 100.00
	end
	
	if change >= 49.999
		answer += 'FIFTY,'
		change -= 50.00
	end

	if change >= 19.999
		answer += 'TWENTY,'
		change -= 20.00
	end

	if change >= 19.999
		answer += 'TWENTY,'
		change -= 20.00
	end

	if change >= 9.999
		answer += 'TEN,'
		change -= 10.00
	end

	if change >= 4.999
		answer += 'FIVE,'
		change -= 5.00
	end

	if change >= 1.999
		answer += 'TWO,'
		change -= 2.00
	end

	if change >= 1.999
		answer += 'TWO,'
		change -= 2.0
	end

	if change >= 0.999
		answer += 'ONE,'
		change -= 1.00
	end

	if change >= 0.499
		answer += 'HALF DOLLAR,'
		change -= 0.50
	end

	if change >= 0.249
		answer += 'QUARTER,'
		change -= 0.25
	end

	if change >= 0.099
		answer += 'DIME,'
		change -= 0.10
	end

	if change >= 0.099
		answer += 'DIME,'
		change -= 0.10
	end

	if change >= 0.049
		answer += 'NICKEL,'
		change -= 0.05
	end

	if change >= 0.009
		answer += 'PENNY,'
		change -= 0.01
	end

	if change >= 0.009
		answer += 'PENNY,'
		change -= 0.01
	end


	if change >= 0.009
		answer += 'PENNY,'
		change -= 0.01
	end


	if change >= 0.009
		answer += 'PENNY,'
		change -= 0.01
	end
	
	answer = answer.chomp(',')
	
	puts answer
end
