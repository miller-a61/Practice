import sys
import math

n = int(raw_input())


for i in xrange(n):
   
    numspaces = 2* n - i - 1
   #STDERR.puts numspaces
    spaces = " " * numspaces
    
    stars =  "*" * (2*i + 1)

    if i == 0:
        spaces = "." + " " * (numspaces - 1)

    
    print ( spaces + stars)
    

for i in xrange(n):
   
    numspaces1 = n - i - 1
    numspaces2 = (2 * n) - (2 * i) - 1
    #STDERR.puts numspaces
    spaces1 = " " * numspaces1
    spaces2 = " " * numspaces2
    
    stars =  "*" * (2*i + 1)

    print( spaces1 + stars + spaces2 + stars)
    