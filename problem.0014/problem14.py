#!python3

msn = 0

for x in range(3,1000000) :
    n = x
    csn = 0

    while n != 1 :
        if n % 2 == 0 :
            n = int(n / 2)
        else :
            n = n * 3 +1

        csn += 1

    if csn > msn :
        msn = csn
        sn = x

print(sn)