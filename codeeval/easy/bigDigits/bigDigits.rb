digits = [
['-**----*--***--***---*---****--**--****--**---**--'],
['*--*--**-----*----*-*--*-*----*-------*-*--*-*--*-'],
['*--*---*---**---**--****-***--***----*---**---***-'],
['*--*---*--*-------*----*----*-*--*--*---*--*----*-'],
['-**---***-****-***-----*-***---**---*----**---**--'],
['--------------------------------------------------']]

puts digits[1][1..5]

File.open(ARGV[0]).each_line do |line|
	line = line.chomp.gsub(/[^0-9]/,'')
	output = Array.new(6,"")
	#puts line
	line.each_char {|x| #puts x
		digits.each {|y| #puts y
			#output[i] += digits[i][5 * x.to_i,5]
			#puts y.slice(0,5)
		}
	}
	#output.each {|y| puts y}
end