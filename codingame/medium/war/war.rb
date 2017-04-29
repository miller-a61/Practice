groucho = Array.new
harpo = Array.new
rank = Array.new ["2","3","4","5","6","7","8","9","1","J","Q","K","A"]

play = true
numTurns = 1

@n = gets.to_i # the number of cards for player 1
@n.times do
    cardp_1 = gets.chomp # the n cards of player 1
    groucho.push(cardp_1)
end
@m = gets.to_i # the number of cards for player 2
@m.times do
    cardp_2 = gets.chomp # the m cards of player 2
    harpo.push(cardp_2)
end

STDERR.puts "groucho: #{groucho.join(":")}"
STDERR.puts "harpo: #{harpo.join(":")}"
STDERR.puts '----------------------------------'

numCards = 1
    
while play do


    gVal = rank.index(groucho[numCards - 1][0])
    hVal = rank.index(harpo[numCards - 1][0])
     
    #result = getWinner(gVal, hVal, numCards)
    #STDERR.puts  result
    if gVal > hVal
        winner = "G" 
    elsif gVal < hVal
        winner = "H"
    else
        numCards += 4
        winner = "W"
    end
    
    #shift the cards
    if winner == "G"
       numCards.times do
          groucho.push(groucho.shift)
       end
       numCards.times do
          groucho.push(harpo.shift) 
       end    
    end
    
    if winner == "H"
        numCards.times do
            #winner first
            #harpo.push(harpo.shift)            
        end            
        numCards.times do
            #first player first
            harpo.push(groucho.shift)            
            #harpo.push(harpo.shift)
        end
        numCards.times do
            #first player first
            harpo.push(harpo.shift)
        end
    end
    
    if winner == "W"
       if groucho.length < numCards || harpo.length < numCards
#STDERR.puts "Winner: #{winner}, Groucho: #{groucho.length}, Harpo: #{harpo.length}, Turn: #{numTurns}, NumCards: #{numCards}, gnext: #{groucho[numCards - 1]}, hnext: #{harpo[numCards - 1]}"
           puts "PAT"
           play = false
        end
    end
    
    #determine if someone is out
    if groucho.length == 0 
        puts "2 " + numTurns.to_s
        play = false
    end
    if harpo.length == 0
        puts "1 " + numTurns.to_s
        play = false
    end

#if numTurns >= 8 && numTurns < 11
#STDERR.puts "Winner: #{winner}, Groucho: #{groucho.length}, Harpo: #{harpo.length}, Turn: #{numTurns}, NumCards: #{numCards}, gnext: #{groucho[numCards - 1]}, hnext: #{harpo[numCards - 1]}"
#STDERR.puts '----------------------------------'
#end

if numTurns == 26
STDERR.puts "groucho: #{groucho.join(":")}"
STDERR.puts "harpo: #{harpo.join(":")}"
STDERR.puts '----------------------------------'  
end

    if winner == "G" || winner == "H"
        numCards = 1
        numTurns += 1
    end
    
end

#puts "PAT"
STDERR.puts "groucho: #{groucho.join(":")}"
STDERR.puts "harpo: #{harpo.join(":")}"
STDERR.puts '----------------------------------'
