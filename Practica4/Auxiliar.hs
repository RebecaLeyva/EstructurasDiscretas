module Auxiliar where

-- Estructuras de datos de la práctica

data Natural = Cero | S Natural deriving (Eq, Show)

data Ent = Zero | Succ Ent | Neg Ent deriving (Eq, Show)

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)