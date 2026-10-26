import EsParBit (esParBit)


data Plazo = Dias Double | Meses Double

{- Función: diasDePlazo
   Descripción: Convierte un plazo en días o meses a días (1 mes = 28,
                6 meses = 182, 12 meses = 364).
   Uso: diasDePlazo (Meses 6) -> 182.0
-}
diasDePlazo :: Plazo -> Double
diasDePlazo (Dias d)   = d
diasDePlazo (Meses m)  =
  if m == 1 then 28
  else if m == 6 then 182
  else if m == 12 then 364
  else error "Plazo en meses no valido (1, 6 o 12)"

{- Función: tasaAnual
   Descripción: Devuelve la tasa bruta anual de Cetes según el plazo en días.
   Uso: tasaAnual 28 -> 0.0609
-}
tasaAnual :: Double -> Double
tasaAnual t =
  if t == 28 then 0.0609
  else if t == 182 then 0.0691
  else if t == 364 then 0.0744
  else error "Plazo en dias no valido (28, 182 o 364)"

{- Función: cetes
   Descripción: Recibe un monto inicial y un plazo (días o meses) y devuelve
                el monto final con VF = VI * (1 + i * t / 360).
   Uso: cetes 100 (Dias 28) -> 100.47366666666667
-}
cetes :: Double -> Plazo -> Double
cetes vi plazo = vi * (1 + tasaAnual t * t / 360)
  where t = diasDePlazo plazo


{- Función: mensajeCetes
   Descripción: Devuelve un mensaje con el plazo, el rendimiento bruto y el
                monto total de la inversión.
   Uso: mensajeCetes 100 (Dias 28) -> "Despues de 28.0 dias, obtuve ..."
-}
mensajeCetes :: Double -> Plazo -> String
mensajeCetes vi plazo =
  "Despues de " ++ show (diasDePlazo plazo) ++ " dias, obtuve " ++ show m
  ++ " de rendimiento bruto sin asumir ningun riesgo crediticio. "
  ++ "El monto total de mi inversion es de " ++ show k ++ "."
  where
    k = cetes vi plazo
    m = k - vi


{- Función: negativos
   Descripción: Recibe una lista de números y cuenta cuántos son negativos,
                usando una lista por comprensión.
   Uso: negativos [-1, 2, 4, 6, -4] -> 2
-}
negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]


{- Función: soloPares
   Descripción: Recibe una lista de enteros y devuelve únicamente los
                números pares, usando esParBit (importada del módulo EsParBit).
   Uso: soloPares [1,2,3,4] -> [2,4]
-}
soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]


{- Función: esPrimo
   Descripción: Indica si un entero es primo (no tiene divisores entre 2 y n-1).
   Uso: esPrimo 7 -> True
-}
esPrimo :: Int -> Bool
esPrimo n =
  if n < 2 then False
  else length [d | d <- [2..n-1], n `mod` d == 0] == 0

{- Función: primos
   Descripción: Recibe una lista de enteros y devuelve solo los primos,
                usando una lista por comprensión.
   Uso: primos [1..20] -> [2,3,5,7,11,13,17,19]
-}
primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]


{- Función: coprimos
   Descripción: Devuelve los números de 1 a n que no comparten ningún
                divisor mayor que 1 con n.
   Uso: coprimos 10 -> [1,3,7,9]
-}
coprimos :: Int -> [Int]
coprimos n =
  [x | x <- [1..n], length [d | d <- [2..x], x `mod` d == 0, n `mod` d == 0] == 0]