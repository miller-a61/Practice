#for submission to hackerrank
lines = ARGF.readlines
lines.drop(1).each do |line| 

#File.open(ARGV[0]).drop(1).each do |line|
	line = line.to_i
	line -= 1

	max3 =  line - line % 3
	max5 =  line - line % 5
	max15 = line - line % 15

	num3 = max3/3
	num5 = max5/5
	num15 = max15/15
	
	sum3 = num3 * (3 + max3) /2
	sum5 = num5 * (5 + max5) /2
	sum15 = num15 * (15 + max15)/2

	final = sum3 + sum5 - sum15
	puts final

end
