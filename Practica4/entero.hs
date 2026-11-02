import Auxiliar

{-
 Función: a_entero
 Descripción: Lleva un dato Natural a su valor entero.
 Uso 1: a_entero Cero = 0
 Uso 2: a_entero (S (S (S Cero))) = 3
-}
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n


{-
 Función: multiEnt
 Descripción: Toma dos enteros y regresa el producto de ellos.
              Se aplica la regla de los signos y el producto de positivos
              se reduce a sumas repetidas (sumaPosEnt en Auxiliar).
 Uso: multiEnt (Neg (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero))
      = Neg (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))
-}
multiEnt :: Ent -> Ent -> Ent
-- Casos base: el cero absorbe
multiEnt Zero _ = Zero
multiEnt _ Zero = Zero
-- Regla de los signos
multiEnt (Neg n) (Neg m) = multiEnt n m
multiEnt (Neg n) m = negEnt (multiEnt n m)
multiEnt n (Neg m) = negEnt (multiEnt n m)
-- Ambos positivos: (n+1) * m = m + n * m
multiEnt (Succ n) m = sumaPosEnt m (multiEnt n m)
