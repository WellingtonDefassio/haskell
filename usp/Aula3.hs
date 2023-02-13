module Aula03 where


-- lambidas

a = 5
f x = x + 2
f' = \x -> x + 2
g = \x y -> x + y


data Pessoa = Pessoa {nome :: String , idade :: Int } deriving Show

multiplicao3 :: Float -> Float -> Float -> Float
multiplicao3 a b c = a * b * c

multiplicao2 :: Float -> Float -> Float
multiplicao2 a = multiplicao3 2 a -- curryng retorna (multiplicao3 2)

multiplicao3' :: Float -> Float -> Float -> Float
multiplicao3' = \a -> \b -> \c -> a * b * c


foo :: (Int -> Int -> Int) -> Int -> Int
foo f a = f 5 a

foo' :: (Int -> (Int -> Int) -> Int) -> Int -> Int
foo' f a = f a (+5)

-- foo' (\x f -> f x + 1) 5

-- map :: (a -> b) -> [a] -> [b]
-- map (+1) [1,2,3]

-- :t chr chr :: Int -> Char

soma1 :: [Int] -> [Int]
soma1 = map (+1)
-- soma1 [1..10]
-- f (1+2-3*5) == f $ 1 + 2 - 3 * 5

-- 1 + 2 + 3 |> (+2) |> (*3) |> (/4)

-- filter (>10) [1..20]

-- foldl :: (b -> a -> b) -> b -> [a] -> b
-- foldl (+) 0 [1..10]

-- id funcao que retorna o mesmo valor recebido

-- f = (+2) g = (/2) -> f (g 10) == f . g $ 10

-- tail init head last 

head' (x:_) = x
tail' (_:xs) = xs

bar :: Int -> Char
bar 1 = 'a'
bar 2 = 'b'
bar _ = 'c'

bar' :: Int -> Char
bar' x | x < 10 = 'a' | x < 20 = 'b' | otherwise = 'c'


bar'' :: Int -> Char
bar'' [x] | x < 10 = 'a' | x < 20 = 'b' | otherwise = 'c'
bar'' (x:y:_) | x > y = 'd' | x + y == 42 = 'e' | otherwise = 'f'
bar'' [] = 'z'