#!python
import math

tn = 3
t = 3
nof = 0

while nof < 500 :
    tn = tn + t
    t += 1
    srtn = int(math.sqrt(tn))

    nof = 0
    for x in range(1, srtn+1) :
        if tn % x == 0 :
            nof += 2

print(tn, "has" , nof)