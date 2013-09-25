#!python3

num1 = 999
num2 = 999
palindrome = set()

while num1 > 100 :
    while num2 > 100 :
        x = num1 * num2
        if str(x) == str(x)[::-1] :
            palindrome.add(x)
        num2 -= 1

    num1 -= 1
    num2 = 999

print(max(palindrome))