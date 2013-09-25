#!python3

max = 2000000
n = 3
s = set(range(2,max+1))
p = {2,3}

while n < max+1 :

        s = s - set(range(n,max+1,n))

        if not s :
            break
        else :
            n = min(s)

        p.add(n)
        #print(n)

print(sum(p))
