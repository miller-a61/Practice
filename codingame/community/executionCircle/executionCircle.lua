
next_token = string.gmatch(io.read(), "[^%s]+")
n = tonumber(next_token())
s = tonumber(next_token())
d = io.read()

--print (n)
--print (s)
--print (d)

x = 2

while (x * 2) <= n do
    x = x * 2
end

--print (x)

if d == "LEFT"
    then answer = s + (2 * (n - x))
else
    answer = s - (2 * (n - x))
end

if answer < 0
   then answer = answer + n
end

if answer > n
   then answer = answer - n 
end

print (answer)
