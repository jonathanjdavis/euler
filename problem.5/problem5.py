#!python3

score = 0
x = 20

while score < 17 :
    x += 20
    score = 0
    for n in range(3,20):
        if x % n != 0 :
            break
        else:
            score += 1

print(x)