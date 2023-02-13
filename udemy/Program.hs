factorial :: Integer -> Integer
--factorial 0 = 1
--factorial n = n * factorial (n - 1)
factorial n = if n == 0 then 1 else n * factorial (n - 1)


double x = 2 * x

-- import Data.Char

nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

valAbs :: Int -> Int

valAbs n | n >= 0 = n | otherwise = -n

fastExp :: Integer -> Integer -> Integer
fastExp _ 0 = 1
-- fastExp x n = let y = fastExp x n_halved n_halved = div n 2 in if even n then y * y else y * y * x
fastExp x n | even n = y * y 
            | otherwise = y * y * x 
            where y = fastExp x n_halved 
                  n_halved = div n 2