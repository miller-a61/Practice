-- Auto-generated code below aims at helping you parse
-- the standard input according to the problem statement.

N = tonumber(io.read())
s = 86400

for i=0,N-1 do
    t = io.read()

    u = tonumber(string.sub(t,0,2)) * 3600 + tonumber(string.sub(t,4,5)) * 60 + tonumber(string.sub(t,7,8))

    if (u < s)
        then answer = t
            s = u
    end



end

-- Write an action using print()
-- To debug: io.stderr:write("Debug message\n")

print(answer)