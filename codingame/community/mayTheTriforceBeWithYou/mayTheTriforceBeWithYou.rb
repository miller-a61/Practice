# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = gets.to_i

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

for i in 0..n - 1 do
   
    numspaces = 2* n - i - 1
   #STDERR.puts numspaces
    spaces = " " * numspaces
    
    stars =  "*" * (2*i + 1)

    if i == 0
        spaces = "." + " " * (numspaces - 1)
    end
    
    puts spaces + stars
    
end

for i in 0..n - 1 do
   
    numspaces1 = n - i - 1
    numspaces2 = (2 * n) - (2 * i) - 1
    #STDERR.puts numspaces
    spaces1 = " " * numspaces1
    spaces2 = " " * numspaces2
    
    stars =  "*" * (2*i + 1)

    puts spaces1 + stars + spaces2 + stars
    
end

#puts "answer"

=begin
.    *
    ***
   *****
  *     *
 ***   ***
***** *****
.     *
=end