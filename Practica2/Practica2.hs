{- Función: reconversion
    Decripción: Recibe un parametro numerico y realiza una reconversión monetaria quitándole tres ceros al valor ingresado.
    Uso: reconversion 1000 -> "0.1"
-}

reconversion :: Double -> Double
reconversion x = x * 0.001

{- Función: cashback
    Decripción: Calcula el cashback obtenido de una tarjeta de credito con el 10% de puntos y 10 puntos de abono.
    Uso: cashback 100 -> 20
-}

cashback :: Double -> Double
cashback x = x * 0.1 + 10

{- Función cashbackMonto
    Decripción: Recibe una cantidad de puntos y devuelve lo equivalente en dinero.
    Uso: cashbackMonto 264 0.10 -> 26.4
-}

cashbackMonto :: Double -> Double -> Double
cashbackMonto x y = x * y

{- Función minutosHoras
    Decripción: Recibe una cantidad de minutos y la devuelve en su conversion en horas.
    Uso: 112 -> 1 hora y 52 minutos
-}

minutosHoras :: Int -> String
minutosHoras x = 
    show (div x 60) ++ (if div x 60 == 1 then " hora " else " horas ")
  ++ show (mod x 60) ++ (if mod x 60 == 1 then " minuto" else " minutos")