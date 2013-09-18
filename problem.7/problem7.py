#!python3

import math

pos = 6
x = 13

while pos != 10001 :
    x += 2
    prime = True
    for n in range(2,round(math.sqrt(x))+1):
        if x%n == 0:
            prime = False
            break

    if prime:
        pos += 1

print(x)