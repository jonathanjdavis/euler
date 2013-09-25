#!python3

n = 2 ** 1000
s = 0

for x in str(n) :
    s += int(x)

print(s)