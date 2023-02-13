power :: Int -> Int -> Int
power x 0 = 1  -- Base case
power x p | even p = n * n
          | otherwise = n * n * x
          where
              n = power x (div p 2)

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False

isPrime x = not (hasDivisor (x - 1))
    where
        hasDivisor :: Int -> Bool
        hasDivisor 1 = False
        hasDivisor n = mod x n == 0 || hasDivisor(n - 1)

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]