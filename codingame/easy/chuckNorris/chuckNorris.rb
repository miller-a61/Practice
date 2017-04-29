# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

message = gets.chomp

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
answer = ""
bin = ""
prev_char = ""


message.each_char{|c| 
    zero = ''
    temp = c.ord.to_s(2)
    
    tst = (7 - temp.length) 
    tst.times do
        zero += '0'
    end
    
    bin += zero + temp
    
    #STDERR.puts "#{zero}+#{temp}"
   # bin += c.ord.to_s(2)
    

}

#STDERR.puts bin

bin.each_char {|b|
    

    #number changes
    #STDERR.puts "#{prev_char} , #{b}"
    if b != prev_char

      #STDERR.puts answer
      answer += (b == '1') ? ' 0 0' : ' 00 0'
      #STDERR.puts answer

    else 
        answer += '0'
    end

    
    prev_char = b
       # STDERR.puts b
}

STDERR.puts bin
puts answer.lstrip