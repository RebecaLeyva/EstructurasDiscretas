import Auxiliar

{-
 Función: mayorIgual
 Descripción: Compara dos matrioskas por su profundidad (cuántas Cont tienen)
              y devuelve True si la primera es mayor o igual que la segunda.
 Uso 1: mayorIgual Mati Mati = True
 Uso 2: mayorIgual (Cont Mati) Mati = True
 Uso 3: mayorIgual Mati (Cont Mati) = False
-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual _ Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont n) (Cont m) = mayorIgual n m

{-
 Función: aplana
 Descripción: Convierte una matrioska anidada en una lista plana de todas las
              matrioskas que la componen, de la más externa a la más interna.
 Uso 1: aplana Mati = [Mati]
 Uso 2: aplana (Cont (Cont Mati)) = [Cont (Cont Mati), Cont Mati, Mati]
-}
aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = Cont m : aplana m