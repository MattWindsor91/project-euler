def fib_gen(ubound):
    a = 0
    b = 1

    while b < ubound:
        yield b
        a, b = b, a+b

acc = 0
for i in fib_gen(4000000):
    if i%2==0:
        acc += i

print acc
