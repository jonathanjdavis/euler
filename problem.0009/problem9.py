#!python3

n = 1
m = n + 1

ora = 2*m*n
orb = m**2 - n**2
orc = m**2 + n**2
a, b, c = ora, orb, orc

while a+b+c < 1000 :
    k = 1
    while a+b+c < 1000 :
        a = ora * k
        b = orb * k
        c = orc * k
        k += 1

    if a+b+c != 1000 :

        if m > 500 :
            n += 1
            m = n +1
        else :
            m += 1

        ora = 2*m*n
        orb = m**2 - n**2
        orc = m**2 + n**2
        a, b, c = ora, orb, orc


print(a*b*c)



