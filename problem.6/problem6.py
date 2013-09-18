#!python3

sumsqr = 0
sqrsum = 0

for x in range(1,101):
    sumsqr += x**2
    sqrsum += x

sqrsum = sqrsum**2
print(sqrsum, " - ", sumsqr, " = ", sqrsum - sumsqr)