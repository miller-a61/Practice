numList=[]
n=gets.to_i
n.times{telephone=gets.chomp
telephone.each_char.with_index{|x,i|numList.push(telephone[0,i+1])}}
p numList.uniq.length
