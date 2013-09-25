#!python3

x = 1
y = 0

for n in range(1,101) :
    x = x * n

for m in str(x) :
    y += int(m)

print(y)
