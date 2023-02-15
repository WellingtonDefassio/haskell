lista = [1..40]
lista2 = [50 .. 60]
listaNome = ["azul", "amaerelo", "vermelho"]

-- head lista 1
-- last lista 40
-- tail lista [2 .. 40]
-- init lista [1 .. 39]
-- reverse lista [40 .. 1]
-- length lista 40  <- tamanho
-- null [] -> retorna True / null lista -> True (null listaVazia -> True null ListaNãoVazia -> False)
-- elem 45 lista -> False / elem 40 lista -> True (verifica se o elemento existe na lista)
-- (!!) lista 4 -> retorna o elemento na quarta posição 5
-- (++) lista lista2 -> uma lista [1 .. 40  50 .. 60]  (juntar listas) pode ser usado (lista ++ lista2)
-- maximum lista 40 retorna o maior numero da lista -> maximum listaNome "vermelho"
-- minimum lista 1 retorna o menor numero da lista -> minimum listaNome "amaerelo"
-- sum lista 820 -> soma dos valores na lista
-- product [11,11,11] -> 1331 = 11*11*11
-- take 2 listaNome ["azul","amaerelo"] pega o 2 elementos  na lista a->b
-- drop 2 listaNome ["vermelho"] joga fora os 2 primeiro elementos da lista a->b
-- zip lista listaNome [(1,"azul"),(2,"amaerelo"),(3,"vermelho")] (combina os elementos da lista em tuplas)
-- repeat 3 -> infinitos 3 (take 4 (repeat 3)) -> [3,3,3,3]
-- concat [lista, lista2, lista] -> concatena em uma nova lista os elementos dentro da lista