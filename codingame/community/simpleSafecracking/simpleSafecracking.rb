@msg = gets.chomp.downcase

label = @msg[0, 23].split("") 
label.push("-")
comb = @msg[25, @msg.length]
key = "the safe combination is-".split("")
ans = ""
combo = ""

comb.each_char {|x| ans += label.index(x) != nil ? let = key[label.index(x)] : " "}

answer = ans.split("-")

answer.each {|y|
    combo += case y
                when "one"      then "1"
                when "t o"      then "2"
                when "th ee"    then "3"
                when "fo  "     then "4"
                when "fi e"     then "5"
                when "si "      then "6"
                when "se en"    then "7"
                when "ei ht"    then "8"
                when "nine"     then "9"
                when " e o"     then "0"
            end
}

puts combo