#!/bin/ruby

def compare_score (a, b, ascore, bscore)
    if a == b
    elsif a > b ? ascore = ascore + 1 : bscore = bscore + 1
    end
    c = [ascore, bscore]
end

score = [0, 0]
        
a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i

score = compare_score(a0,b0,score[0], score[1])
score = compare_score(a1,b1,score[0], score[1])
score = compare_score(a2,b2,score[0], score[1])
        
puts score.join(' ')
  
