def toLvl (lvl)
    return (lvl * Math.sqrt(lvl) * 10).floor
end

lvl = gets.to_i
needed = gets.to_i
xp = gets.to_i * 300

while xp >= needed do
    lvl += 1
    xp -= needed
    needed = toLvl(lvl)
end

puts lvl
puts needed - xp