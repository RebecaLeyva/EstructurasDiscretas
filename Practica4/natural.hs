import Auxiliar

{-
 Función: a_natural
 Descripción: Lleva un entero (0,1,2,...) a su estructura de dato Natural.
 Uso 1: a_natural 0 = Cero
 Uso 2: a_natural 2 = S (S Cero)
-}
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n
  | n > 0 = S (a_natural (n - 1))


