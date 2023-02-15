
distance :: (Float, Float) -> (Float, Float) -> Float
-- 3 FORMAS DIFERENTES DE MONTAR UMA FUNÇÃO
--distance p1 p2 = sqrt ((fst p1 - fst p2)^2 + (snd p1 - snd p2)^2)
--distance (x1, y1) (x2 , y2) = sqrt ((x1 - x2)^2 + (y1 - y2)^2)
distance p1 p2 = sqrt (sqr dx + sqr dy)
     where
        (x1, y1) = p1
        (x2, y2) = p2
        dx = x1 - x2
        dy = y1 - y2
        sqr x = x * x

somar :: [Int] -> Int
--somar [] = 0
--somar (lista:sublista) = lista + somar sublista

somar list =
    case list of
      [] -> 0
      x:xs -> x + sum xs

divImod numero divisor
    | numero < divisor = (0,numero)
    | otherwise = (q + 1, r)
    where (q,r) = divImod (numero - divisor) divisor

firstAndSecond list =
    let first:second:rest = list
    in (first,second)

