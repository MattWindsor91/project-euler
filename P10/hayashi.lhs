PROBLEM 10: SUM OF PRIMES BELOW 2 MILLION

Yet another shonky sieve solution (S3)
Literally sum the results of sieving from 2 to 1999999.  Took 27 seconds here =(

> prob10 = sum . sieve $ 1999999
 
sieve implements a really wonky version of the Sieve of Eratosthenes.

> sieve a = sieve2 (intSqrt a) [2..a]

This could and should probably be factored into a higher-order
pattern, but what this does is combs through the entire sieve from
left to right, kicking out any multiples of the current number in the
rest of the sieve.  It's bloody awful.

> sieve2 :: Integer -> [Integer] -> [Integer]
> sieve2 _ [] = []
> sieve2 n (x:xs)
>   | x >= n = x:xs
>   | otherwise = x : sieve2 n (filter (sieveTerm x) xs)

The sieve rejects a number b if, for the number a currently being
sieved, b divided by a comes up with a remainder.

> sieveTerm a b = b `mod` a /= 0

intSqrt returns an optimistic estimate of the square root of an
integral, as another integral.

> intSqrt :: (Integral a) => a -> a
> intSqrt = ceiling . sqrt . fromIntegral
