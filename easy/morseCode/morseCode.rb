def morse (letter)
	letter= letter.strip
	case letter 
	when '.-' then 'A'
	when '-...' then 'B'
	when '-.-.' then 'C'
	when '-..' then 'D'
	when '.' then 'E'
	when '..-.' then 'F'
	when '--.' then 'G'
	when '....' then 'H'
	when '..' then 'I'
	when '.---' then 'J'
	when '-.-' then 'K'
	when '.-..' then 'L'
	when '--' then 'M'
	when '-.' then 'N'
	when '---' then 'O'
	when '.--.' then 'P'
	when '--.-' then 'Q'
	when '.-.' then 'R'
	when '...' then 'S'
	when '-' then 'T'
	when '..-' then 'U'
	when '...-' then 'V'
	when '.--' then 'W'
	when '-..-' then 'X'
	when '-.--' then 'Y'
	when '--..' then 'Z'
	when '-----' then '0'
	when '.----' then '1'
	when '..---' then '2'
	when '...--' then '3'
	when '....-' then '4'
	when '.....' then '5'
	when '-....' then '6'
	when '--...' then '7'
	when '---..' then '8'
	when '----.' then '9'
	else '#'
	end
end

File.open(ARGV[0]).each_line do |line|
	line = line.chomp
	answer = ""
	while line.length > 0
		if line.include?(' ')
			if line.index(' ') == 0
				answer += " "
				line = line[1..-1]
			else
				letter = line[0..line.index(' ')]
				line = line[line.index(' ') + 1..-1]
				answer += morse(letter)
			end
		else
			letter = line
			answer += morse(letter)
			line = ''
		end
	end
	puts answer
end
