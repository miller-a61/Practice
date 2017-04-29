lvl = tonumber(io.read())
needed = tonumber(io.read())
xp = tonumber(io.read()) * 300


while xp >= needed do
    lvl = lvl + 1
    xp = xp - needed
    needed = math.floor((lvl * math.sqrt(lvl) * 10))
end

print(lvl)
print(needed - xp)

