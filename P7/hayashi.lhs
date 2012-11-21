PROBLEM 7 0 THE 10001ST PRIME NUMBER

> prob7 = primes !! 10000
>   where primes = sieve (10001*10001)
 
> sieve a = sieve2 (intSqrt a) [2..a]

> sieve2 :: Integer -> [Integer] -> [Integer]
> sieve2 _ [] = []
> sieve2 n (x:xs)
>   | x >= n = x:xs
>   | otherwise = x : sieve2 n (filter (sieveTerm x) xs)

> intSqrt :: (Integral a) => a -> a
> intSqrt = ceiling . sqrt . fromIntegral

> sieveTerm a b = b `mod` a /= 0
