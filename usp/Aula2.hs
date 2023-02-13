

-- [<<expressão resultado>> | ireracao1, iteracao2], ... iteraçãon, predicado1, predicado2 ... predicadon

data Animal = Cachorro | Gato | Rato deriving Show

som :: Animal -> String
som Cachorro = "au au"
som _ = "sem som"

g :: Int -> Bool
g 1 = True
g 2 = True
g _ = False

t :: (String, Int) -> Float
t ("Gabriel", 31) = 2.5
t ("Andrew", _) = 0
t (_, 99) = 0

primeiro :: [Int] -> Int
primeiro (x : _) = x

data Pessoa = Pessoa String Int deriving Show

oi :: Pessoa -> String
oi (Pessoa nome idade) = "Olá, " ++ nome ++ " !"

data Setor = Roupas | Alimentos deriving Show
show' :: Setor -> String
show' Roupas = "roupas"
show' Alimentos = "alimentos"

data Funcionario = Vendedor String | Gerente String Setor deriving Show

oi' :: Funcionario -> String
oi' (Vendedor nome) = "Olá, " ++ nome ++ " !"
oi' (Gerente nome setor) = "Olá, " ++ nome ++ " setor !" ++ show setor

getNomeFuncionario :: Funcionario -> String
getNomeFuncionario (Vendedor nome) = nome
getNomeFuncionario (Gerente nome _) = nome

type Id = Int

ehUm :: Id -> Bool
ehUm 1 = True
ehUm _ = False

a :: Int
a = 1

b :: Id
b = 1

resultado1 = ehUm a
resultado2 = ehUm b

newtype Id' = Id' Int

ehUm' :: Id' -> Bool
ehUm' (Id' 1) = True
ehUm' _ = False


--getSetorFuncionario :: Funcionario -> Setor
--oi' (Gerente _ setor) = setor

data Pessoa' = Pessoa' { nome :: String, idade :: Int } deriving Show
