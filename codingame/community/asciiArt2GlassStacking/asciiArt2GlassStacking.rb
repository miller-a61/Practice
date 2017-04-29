def pline (text, offset, n)

    toprint = (" " * offset) + text * n + (" " * offset)
    puts toprint[1..-1]
end

def numrows (n)
    sum = 0
    for i in 1..n
        sum += i
        if sum <= n
            rows = i
        end
    end   
    rows
end

n = gets.to_i

rows = numrows(n)

for j in 1..rows

    pline("  *** ", (rows - j)*3 , j)
    pline("  * * ", (rows - j)*3 , j)
    pline("  * * ", (rows - j)*3 , j)
    pline(" *****", (rows - j)*3 , j)

end