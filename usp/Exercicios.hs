import Data.Char
list1 = [1,11,121,1331,14641,161051,1771561]
list7 = [0,1,2,3,4,5,6,7]
list2 = [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]
list3 = ["AaBB","AbBB", "AcBB", "AdBB", "AeBB", "AfBB", "AgBB"]

multBy :: Integer -> Integer -> Integer
multBy _ 0 = 1
multBy numero vezes = if vezes == 1 then numero else (multBy (numero * 11) (vezes - 1))
multby11 = multBy 11
--execução map multby11 list7

lessFour :: [Integer] -> [Integer]
lessFour numbers = [number | number <- numbers, mod number 4 /= 0]

toCharList :: [Int] -> [String]
toCharList numbers = ["A" ++ [chr (number + 97)] ++ "BB" | number <- numbers ]

list = [1..40]
multiplyByEleven :: Int -> Int
multiplyByEleven x = 11 ^ x

parimpar x = even (length x)
carray x = [length a | a <- x]
onlypar r = [x | x <- r, even x]

pbb listPalavras = [length num | num <- listPalavras, even (length num)]

data Pergunta = Sim | Nao deriving Show

pergNum :: Pergunta -> Int 

pergNum Nao = 0
pergNum Sim = 1

listPergs :: [Pergunta] -> [Int]
listPergs lista = [pergNum pergunta | pergunta <- lista]

pergAnd :: Pergunta -> Pergunta -> Pergunta
pergAnd Sim Sim = Sim
pergAnd _ _ = Nao

fac :: Integer -> Integer
fac 0 = 1
fac n = n * fac (n - 1)
-- fac 5 = 5 * (fac 4) * (fac 3) * (fac 2) * (fac 1)


