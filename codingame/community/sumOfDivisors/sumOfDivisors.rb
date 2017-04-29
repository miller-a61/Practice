x=gets.to_i
y=x/2
z=y
for i in 1..y
    z+=y/i*(1+x/i)
    x/i%2==1&&z+=1+y/i  
end
p z