module Auxiliar where


-- Estructuras de datos de la práctica

data Natural = Cero | S Natural deriving (Eq, Show)

data Ent = Zero | Succ Ent | Neg Ent deriving (Eq, Show)

data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)


-- Funciones auxiliares sobre Natural

{-
 Función: sumaNat
 Descripción: Suma dos naturales.
 Uso: sumaNat (S Cero) (S (S Cero)) = S (S (S Cero))
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero m = m
sumaNat (S n) m = S (sumaNat n m)

{-
 Función: multNat
 Descripción: Multiplica dos naturales (sumas repetidas).
 Uso: multNat (S (S Cero)) (S (S (S Cero))) = S (S (S (S (S (S Cero)))))
-}
multNat :: Natural -> Natural -> Natural
multNat Cero _ = Cero
multNat (S n) m = sumaNat m (multNat n m)

-- Funciones auxiliares sobre Ent

{-
 Función: negEnt
 Descripción: Cambia el signo de un entero. Colapsa dobles negaciones
              y deja el cero como cero.
 Uso: negEnt (Succ Zero) = Neg (Succ Zero)
      negEnt (Neg (Succ Zero)) = Succ Zero
-}
negEnt :: Ent -> Ent
negEnt Zero = Zero
negEnt (Neg n) = n
negEnt n = Neg n

{-
 Función: sumaPosEnt
 Descripción: Suma dos enteros NO negativos (Zero o Succ ...).
-}
sumaPosEnt :: Ent -> Ent -> Ent
sumaPosEnt Zero m = m
sumaPosEnt (Succ n) m = Succ (sumaPosEnt n m)