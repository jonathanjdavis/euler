#!python3

x = 600851475143
n = 2
fp = set()

while x != n :
    if x % n == 0 :
        x = x / n
        fp.add(n)
        n = 2
    else :
        n += 1

fp.add(n)
print(max(fp))
