n=gets.to_i
s=86400
a=''
n.times{t=gets.chomp
u=t[0,2].to_i * 3600 + t[3,2].to_i * 60 + t[6,2].to_i
u<s&&a=t   
u<s&&s=u}
puts a