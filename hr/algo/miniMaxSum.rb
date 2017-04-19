File.open(ARGV[0])
line = readlines

arr = line[0].split(' ').map(&:to_i)

arr = [a,b,c,d,e]

sum = 0

arr.each{|i| sum += i}

ans = [0,0]
ans[0] = sum - arr.max
ans[1] = sum - arr.min

puts ans.join(' ')

