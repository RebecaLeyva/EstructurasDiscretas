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


{- Función esEstafa
    Decripción: Recibe 4 parametros: el precio del producto, el primer billete, el segundo billete y el cambio que el cliente regresó
    Uso: esEstafa 100 200 100 0 -> True
-}

esEstafa :: Int -> Int -> Int -> Int -> Bool
esEstafa precio prbillete sdbillete rgcambio =
    if sdbillete + rgcambio - precio - (prbillete - precio) == 0
    then False
    else True


{- Función esDescendente
    Decripción: Recibe cuatro parametros numericos x, y, z y w. La función debe devolver un True si los numeros fueron ingresados de manera esDescendente
    Uso: esDescendente 4 3 2 1 -> True
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = 
    if x>y
    then if y>z
        then if z>w
            then True
            else False
        else False
    else False


{- Función imc
    Decripción: Recibe dos parámetros, el primero de ellos los kg, el segundo los cm o metros y devolver tu imc de acuerdo la interpretación según la OMS: bajo, normal, sobrepeso, obesidad. 
    Uso: imc 53.5 161 -> normal
-}

imc :: Double -> Double -> String
imc x y =
  if y > 3
    then (if x / ((y/100)*(y/100)) < 18.5 then "Bajo peso"
          else if x / ((y/100)*(y/100)) < 25 then "Normal"
          else if x / ((y/100)*(y/100)) < 30 then "Sobrepeso"
          else "Obesidad")
    else (if x / (y*y) < 18.5 then "Bajo peso"
          else if x / (y*y) < 25 then "Normal"
          else if x / (y*y) < 30 then "Sobrepeso"
          else "Obesidad")
        

{- Función hipotenusa
    Decripción: Recibe dos valores de tipo flotante base y altura, la funcion devuelve un valor de tipo flotante la hipotenusa.
    Uso: hipotenusa 9.0 12.0 -> 15.0
-}

hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b*b + h*h)


{- Función pendiente
    Decripción: Recibe dos parametros que seran tuplas de dos elementos flotantes y devolvera un valor flotante que represente a la pendiente de la recta que pasa por los puntos.
    Uso: pendiente (3.0,2.0) (7.0,8.0) -> 1.5
-}

pendiente :: (Float, Float) -> (Float,Float) -> Float
pendiente (x1, y1) (x2, y2) = (y2 - y1)/(x2 - x1)


{- Función distanciaPuntos
    Decripción: Recibe dos parametros que seran tuplas de dos elementos flotantes y devolvera un valor flotante que represente la distancia entre los puntos.
    Uso: distanciaPuntos (2,1) (5,5) -> 5
-}

distanciaPuntos :: (Float,Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))