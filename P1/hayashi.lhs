> import Data.List (unfoldr)

PROBLEM 1 - SUM OF MULTIPLES OF 3 AND 15 BELOW 1000

Take the sum of the multiples of 3 below 1000 (that is, to 999) and
the sum of the multiples of 5 below 1000.  Add these, but now we count
the multiples of 15 (that is, both multiples of 3 and 5) twice, so
remove their sum again.

> prob1 = sum (multiples 3) + sum (multiples 5) - sum (multiples 15)
>   where multiples i = [0, i .. 999]
