require 'prime'
arr = Prime.first 1000
sum = 0
arr.each {|x| sum += x}
p sum

