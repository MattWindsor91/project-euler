num = 600851475143
biggestfactor = 1

for i in xrange(2, num/2 + 1):
    if num==1:
        break
    if num%i==0:
        biggestfactor = i
        while num%i==0:
            num /= i

print biggestfactor
