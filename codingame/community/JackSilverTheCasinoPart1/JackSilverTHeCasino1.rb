rnds = gets.to_i
cash = gets.to_f

rnds.times do
    play = gets.chomp.split

    #setup
    bet = (cash/4).ceil
    cash -= bet
    ball = play[0].to_i
    call = play[1]
    if call == "PLAIN"
        target = play[2].to_i
    end
    #result
    if call == "PLAIN" && ball == target
        cash  += bet * 36
    elsif call == "EVEN" && ball > 0 && ball % 2 == 0
        cash += bet * 2
    elsif call == "ODD" && ball % 2 == 1
        cash += bet * 2
    end
end

p cash.to_i