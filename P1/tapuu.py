from operator import *
print reduce(add, filter(lambda x: x % 3 == 0 or x % 5 == 0, range(0, 
1000)))
