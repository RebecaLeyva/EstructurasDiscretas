{- Función: reconversion
    Decripción: Recibe un parametro numerico y realiza una reconversión monetaria quitándole tres ceros al valor ingresado.
    Uso: reconversion 1000 -> "0.1"
-}

reconversion :: Double -> Double
reconversion x = x * 0.001

{- Función: cashback
    Decripción: Calcula el cashback obtenido de una tarjeta de credito con el 10% de puntos y 10 puntos de abono.
    Uso: cashback 100 -> 10
-}

cashback :: Double -> Double
cashback x = x * 0.1 + 10