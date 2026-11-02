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
