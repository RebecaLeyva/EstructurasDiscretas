module EsParBit (esParBit) where

import Data.Bits ((.&.))

{- Función: esParBit
   Descripción: Indica si un entero es par revisando su último bit.
   Uso: esParBit 4 -> True
-}
esParBit :: Int -> Bool
esParBit n = n .&. 1 == 0