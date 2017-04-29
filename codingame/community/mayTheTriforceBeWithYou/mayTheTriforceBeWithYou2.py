import sys
import math

n = int(input())


for i in range(n):
   
    numspaces = 2* n - i - 1
   #STDERR.puts numspaces
    spaces = " " * numspaces
    
    stars =  "*" * (2*i + 1)

    if i == 0:
        spaces = "." + " " * (numspaces - 1)

    
    print ( spaces + stars)
    

for i in range(n):
   
    numspaces1 = n - i - 1
    numspaces2 = (2 * n) - (2 * i) - 1
    #STDERR.puts numspaces
    spaces1 = " " * numspaces1
    spaces2 = " " * numspaces2
    
    stars =  "*" * (2*i + 1)

    print( spaces1 + stars + spaces2 + stars)
    