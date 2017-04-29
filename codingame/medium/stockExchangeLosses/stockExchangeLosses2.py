import sys
import math

inputs = []

n = int(input())
for i in input().split():
    v = int(i)
    inputs.append(v)

max_loss = 0
pos = -1
j = len(inputs) - 1

while (pos != 0):
    
    if len(inputs[0:j]) > 0:
        top = max(inputs[0:j])
        pos = inputs.index(top)
     
        bottom = min(inputs[pos:len(inputs)])   
    
        loss = bottom - top
        if loss < max_loss:
            max_loss = loss     
    
        j = inputs.index(top) - 1
    else:
        pos = 0
print(max_loss)