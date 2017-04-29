

x = tonumber(io.read())

    y = x/2
    z = y
    for i= 1, y do
        z = z + y//i * (1+ x//i)
        if (x//i % 2 == 1) 
            then z = z + 1 + y//i
        end
    end
    

print(string.format("%.0f", z))


