#!python3

pFib = 1
cFib = 1
bFib = True
sumFib = 0

while bFib :
    tFib = cFib
    cFib = cFib + pFib
    pFib = tFib
    if cFib > 4000000 :
        bFib = False
    elif cFib%2 == 0 :
        sumFib = sumFib + cFib

print(sumFib)