n = gets.to_i
input = gets.chomp

STDERR.puts input

zeros = 0
neg = false
dec = false

#=begin
input.each_char { |x|
    if x == '0' 
        zeros += 1
    end
}

input = input.gsub("0", "").gsub(" ", "")

if input.index("-") != nil
    neg = true
    input = input.gsub("-","")
end

if input.index(".") != nil
    dec = true
    input = input.gsub(".","")
end

input = input.split("").sort.join

if neg == false 
    input = input.reverse
end

STDERR.puts input
if input == ""
    puts 0
elsif dec == false
    puts neg ? "-" + input : input + ("0" * zeros)
else
    if neg == true
        input = "0" * zeros + input 
        puts  "-" + input[0] + "." + input[1..-1]
    elsif zeros > 0
        puts input + "0" * (zeros - 1)
    else
        puts input[0..-2] + "." + input[-1]
    end
        
end

#=end


