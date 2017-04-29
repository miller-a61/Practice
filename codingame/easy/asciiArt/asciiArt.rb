# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
i = 0
alphabet = Array.new

@l = gets.to_i
@h = gets.to_i
@t = gets.chomp

wordLength = @t.length

@h.times do
    row = gets.chomp
    alphabet[i] = row
    i += 1
end

j = 0

#number of lines is height of letters in alphabet
@h.times do
    k = 0
    answer = ""
    wordLength.times do
        
        #ascii value of letter
        y = @t[k].ord
        
        #if @t is not a letter, set its value
        #to 64 @-sign
        if y < 64 or (y > 90 and y < 97) or y > 122
            y = 64
        else
            y
        end
        
        #if lower case change the value to 
        #ascii value of upper case letter
        y = y > 92 ? y - 32 : y
        
        #which letter of the alphabet        
        x = (y - 65) * @l

        #get the substring of the given letter
        #and add to answer
        answer += alphabet[j][x,@l]
        k += 1
    end
    puts answer
    
    j += 1
end