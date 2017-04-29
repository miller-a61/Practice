def wordScore (word)
    score = 0
    word.each_char {|c|
        case c when 'e','a','i','o','n','r','t','l','s','u' then score += 1
                when 'd','g' then score += 2
                when 'b','c','m','p' then score += 3
                when 'f','h','v','w','y' then score += 4
                when 'k' then score += 5
                when 'j','x' then score += 8
                when 'q','z' then score += 10
        end
    }
    score
end

##############################################################################
#start of program
dict = Hash.new
sortDict = Hash.new

numWords = gets.to_i
STDERR.puts numWords

#get and score all dictionary words
numWords.times {w = gets.chomp
    if w.length < 8
        dict.store(w, wordScore(w))
    end
}

#alphabetize the words in the dictionary
dict.each {|key, value| #STDERR.puts "#{key}, #{value}"
    x = key.split("").sort.join
    sortDict.store(key, x)
}

#alphabetize the letters
letters = gets.chomp.chars.sort.join

answer = ""
let = ""
let2 = ""
topScore = 0

#six-letter word check
letters.each_char {|c|
    let = letters.sub(c,"")
    if sortDict.value?(let)
        word = sortDict.key(let)
        wordScore = dict[word]
        #STDERR.puts "Word: #{word}, score: #{wordScore}"
        if wordScore > topScore
            topScore = wordScore
            answer = word
        end
    end
    
    let.each_char {|ch|
        let2 = let.sub(ch,"")
        #STDERR.puts let2
        if sortDict.value?(let2)
            word = sortDict.key(let2)
            wordScore = dict[word]
            if wordScore > topScore
                topScore = wordScore
                answer = word
            end
        end
        
    }
}

#five-letter word check

#seven letter word check
if sortDict.value?(letters)
    answer = sortDict.key(letters)
end

puts answer
#word 1: which
#word 2: potsie
#word 3: powers
#word 4: waster
#word 5: tween
#word 6: aeiou
#word 7: satire
#word 8: pastern