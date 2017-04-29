-- Auto-generated code below aims at helping you parse
-- the standard input according to the problem statement.

N = tonumber(io.read())

for i = 0, N - 1 do
    
    anwer = ""
    numspaces = (2 * N) - i - 1
    
    if (i == 0)
        then answer = "."..string.rep(" ",numspaces - 1)
    else answer = string.rep(" ", numspaces)
        
    end
    
    numstars = 2 * i + 1

    answer = answer..string.rep("*", numstars)
    
    print(answer)

end

for i = 0, N - 1 do
    
    anwer = ""
    
    numspaces = N - i - 1
    answer = string.rep(" ", numspaces)
    
    numstars = 2 * i + 1
    answer = answer..string.rep("*", numstars)
    
    numspaces2 = (2 * N) - (2 * i) - 1
    answer = answer..string.rep(" ", numspaces2)    

    answer = answer..string.rep("*", numstars)
    
    print(answer)

end