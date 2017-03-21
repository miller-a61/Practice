def how_much_i_love_you(nb_petals)
 case nb_petals % 6
    when 1
      a = "I love you"
    when 2
      a = "a little"
    when 3
      a = "a lot"
    when 4
      a = "passionately"
    when 5
      a = "madly"
    when 0
      a = "not at all"
    end
    a
end
