PROBLEM 7 0 THE 10001ST PRIME NUMBER

Literally index prime at index 10,000.
10001*10001 is a MASSIVE overestimate of the prime and could probably
be knocked down a bit to speed the computation up, but was chosen in
order to be REALLY safe.

> prob7 = primes !! 10000
>   where primes = sieve (10001*10001)
 
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
