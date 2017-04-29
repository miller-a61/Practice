def get_num (num, digits)
    digit = -1
    digits.each {|n| num == n && digit = digits.index(n)}
    digit
end

def print_num (n, digits)
    x = digits[n]
    for k in 0..@h - 1
        puts x[k * @l, @l]
    end
end

numerals = Array.new
digits = Array.new
fnumbers = Array.new
snumbers = Array.new
rnumbers = Array.new
fnum = ""
snum = ""

@l, @h = gets.split(" ").collect {|x| x.to_i}
@h.times do
    numeral = gets.chomp
    numerals.push(numeral)
end

#pivot the digits
for i in 0..19
    x = ""
    for j in 0..@h - 1
        x += numerals[j][i * @l, @l]
    end
    digits.push(x)
end

#first number
@s1 = gets.to_i
x1 = 1
@s1.times do
    num_1line = gets.chomp
    STDERR.puts num_1line
    fnum += num_1line
    if x1 == @l
       fnumbers.unshift(fnum)
       x1 = 0
       fnum = ""
    end
    x1 += 1
end


#second number
@s2 = gets.to_i
x2 = 1
@s2.times do
    num_2line = gets.chomp
    STDERR.puts num_2line
    snum += num_2line
    if x2 == @l
        snumbers.unshift(snum)
        x2 = 0
        snum = ""
    end
    x2 += 1
end

@operation = gets.chomp

#convert from mayan to arabic
num1 = 0
for m in 0..fnumbers.length - 1
    num1 += get_num(fnumbers[m], digits) * 20**m
    STDERR.puts get_num(fnumbers[m], digits) 
end
STDERR.puts '-------'
num2 = 0
for n in 0..snumbers.length - 1
    num2 += get_num(snumbers[n], digits) * 20**n
    STDERR.puts get_num(snumbers[n], digits) 
end

#calculate result
result = case @operation
            when "+" then num1 + num2
            when "-" then num1 - num2
            when "*" then num1 * num2
            when "/" then num1 / num2
        end

if result == 0
    zero = true
end

STDERR.puts result
i = 1
while result > 0
    z = result % 20**i
    a = z/20**(i - 1)
    rnumbers.unshift(a)
    result -= z
    i += 1
end

if zero == true
    print_num(0, digits)
else
    rnumbers.each {|x| #STDERR.puts x
        print_num(x, digits)
    }
end