def nToR (line)
	ans = ''
	factor = line/1000
	
	#thousand
	ans = 'M' * factor
	line = line - (1000 * (line/1000))

	#five hundred
	factor = line/500
	ans = ans + ( 'D' * factor )
	line = line - (500 * (line/500))

	#one hundred
	factor = line/100
	ans = ans + ( 'C' * factor )
	line = line - (100 * (line/100))
	
	#fifty
	factor = line/50
	ans = ans + ( 'L' * factor )
	line = line - (50 * (line/50))

	#ten
	factor = line/10
	ans = ans + ( 'X' * factor )
	line = line - (10 * (line/10))
	
	#five 
	factor = line/5
	ans = ans + ( 'V' * factor )
	line = line - (5 * (line/5))

	#one hundred
	factor = line/1
	ans = ans + ( 'I' * factor )
	line = line - (1 * (line/1))
	
	ans = ans.sub('DCCCC', 'CM')
	ans = ans.sub('CCCC',  'CD')
	ans = ans.sub('LXXXX', 'XC')
	ans = ans.sub('XXXX',  'XL')
	ans = ans.sub('VIIII', 'IX')
	ans = ans.sub('IIII',  'IV')

	ans
end

def getVal (str)

    case str
        when "M" then 1000
        when "CM" then 900
        when "D" then 500
        when "CD" then 400
        when "C" then 100
        when "XC" then 90
        when "L" then 50
        when "XL" then 40
        when "X" then 10
        when "IX" then 9
        when "V" then 5
        when "IV" then 4
        when "I" then 1
        end
end


def rToN (line)
    num = 0
    
    letters = line.split("")
    
    while letters.length > 0
        STDERR.puts letters[0]
        if letters[0] == "C" && letters.length > 1 
           if letters[1] == "M" || letters[1] == "D"
               num += getVal(letters[0] + letters[1])
               letters.shift
               STDERR.puts "Shift1"
            else num += getVal(letters[0])
            end
        elsif letters[0] == "X"  && letters.length > 1
            if letters[1] == "C" || letters[1] == "L"
               num += getVal(letters[0] + letters[1])
               letters.shift
               STDERR.puts "Shift2"
            else num += getVal(letters[0])
            end
        elsif letters[0] == "I" && letters.length > 1
            if letters[1] == "X" || letters[1] == "V"
                num += getVal(letters[0] + letters[1])
                letters.shift
                STDERR.puts "Shift3"
            else num += getVal(letters[0])
            end
        else
            num += getVal(letters[0])
        end
        
        letters.shift
        STDERR.puts "Shift4"
        STDERR.puts "len: #{letters.length} , arr: #{letters.join(":")}, sum: #{num}"
        STDERR.puts "------"
    end

    num
    
end

@rom_1 = gets.chomp
@rom_2 = gets.chomp
x = rToN(@rom_1)
y = rToN(@rom_2)
z = x + y

puts nToR(z)
STDERR.puts rToN("MMMCMLXXXVIII")

#STDERR.puts @rom_1
#STDERR.puts @rom_2

#STDERR.puts nToR(13)