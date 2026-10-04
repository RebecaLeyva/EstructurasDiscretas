{- Función: reconversion
    Decripción: Recibe un parametro numerico y realiza una reconversión monetaria quitándole tres ceros al valor ingresado.
    Uso: reconversion 1000 -> "0.1"
-}

reconversion :: Double -> Double
reconversion x = x * 0.001