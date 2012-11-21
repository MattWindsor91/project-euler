PROBLEM 2 - SUM OF EVEN-VALUED TERMS OF FIBONACCI < 4 MILLION

Slightly naive solution, what we do is:

1) Generate a list that contains all the Fibonacci sequence terms from
1.  This uses a function 'unfoldr' that builds a list given an initial
seed value (1, 0), a halting condition (most recently generated term
has reached 4 million), and a definition of the next list item and
next seed value (both storing the next item in the left bit of the
pair and the previous item in the right bit of the pair).

2) We then need to chuck away the right bit of the pair because it
exists only to allow the sequence to be calculated (by storing the
"past" item in the sequence).  'fst' does this...

3) ...then we filter out odd numbers and sum the result.

> prob2 = (sum . filter even . map fst) fibs
>   where fibs = unfoldr fib (1, 0)
>         fib (x, y) | x < 4000000 = Just ((x + y, x), (x + y, x))
>                    | otherwise = Nothing
