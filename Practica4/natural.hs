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


{-
 Función: potenciaNat
 Descripción: Eleva el primer natural (base) a la potencia del segundo (exponente).
 Uso: potenciaNat (S (S (S Cero))) (S (S Cero)) = 3^2 = 9, es decir,
      S (S (S (S (S (S (S (S (S Cero))))))))
-}
potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat n (S m) = multNat n (potenciaNat n m)


{-
 Función: facNat
 Descripción: Devuelve el factorial de un natural.
 Uso: facNat (S (S (S Cero))) = 3! = 6, es decir,
      S (S (S (S (S (S Cero)))))
-}
facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multNat (S n) (facNat n)
