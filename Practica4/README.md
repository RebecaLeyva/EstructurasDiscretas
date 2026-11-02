# Practica 4

### Objetivo, tiempo y comentarios

1. **Objetivo:** El objetivo de esta práctica fue aprender a trabajar con tipos de datos recursivos en Haskell, creando funciones mediante recursión y comparando dos formas de implementar operaciones con números enteros.

2. **Tiempo:** El tiempo aproximado que me tomó realizar la práctica fue de 3 horas.

3. **Comentarios:** Mis ejercicios favoritos fueron `mayorIgual` y `aplana` de `Matrioska`, porque permiten entender fácilmente cómo funciona la recursión en estructuras anidadas.

---

### La chivita Recursiva
Utilizando esta canción, podemos explicar la recursividad de la siguiente manera: el caso base se alcanza con Plim Plim, quien sí acepta sacar al animal anterior. El problema inicia con la chiva, la cual no quiere salir de su lugar. Para resolver esto, se realiza una llamada recursiva convocando a otro animal (como el burro, luego el ratón, el gato, etc.) para que saque al anterior, pero cada uno se niega y delega la tarea en el siguiente. Este proceso de acumulación de llamadas continúa hasta llegar a Plim Plim (el caso base). Una vez que Plim Plim acepta la tarea, se desencadena el proceso inverso: cada animal accede finalmente a sacar al que le corresponde en cadena, logrando al fin que la chivita salga de ese lugar.

---

## Punto 8: `entero.hs` (repositorio) vs `enteros.hs` (adjunto)

### 1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Cómo se manejan todos los casos?
Ambos archivos permiten realizar operaciones básicas con números enteros, pero utilizan nombres diferentes para representar los valores y las funciones. Por ejemplo, entero.hs utiliza Zero y Succ, mientras que enteros.hs utiliza Cero y Suc.

Una diferencia es que enteros.hs incluye la función mayorEnt, que permite comparar dos números enteros, mientras que entero.hs no cuenta con esta función.

Suma: Ambos programas realizan la suma de números positivos y negativos de manera similar. Sin embargo, enteros.hs contempla algunos casos adicionales, como cuando se suman números opuestos y el resultado es cero.

Resta: En esta operación se encuentran las diferencias más importantes. entero.hs tiene algunos errores al restar números negativos o combinar números de diferentes signos. En cambio, enteros.hs maneja mejor estas operaciones, ya que utiliza la función mayorEnt para determinar el signo del resultado cuando es necesario.

También hay que mencionar que en enteros.hs faltan algunos casos, como la resta de cero con cero, mientras que entero.hs sí los contempla.

### 2. ¿Por qué se tiene implementada la operación `mayorEnt` en `enteros.hs`?

La función `mayorEnt` sirve para comparar dos números y saber cuál es mayor. Se utiliza en la resta para determinar qué número tiene mayor valor y así saber si el resultado será positivo o negativo.

### 3. Si pudieras quedarte con una sola implementación, ¿cuál sería? Justifica.

Me quedaría con `enteros.hs`, porque realiza correctamente más operaciones entre números positivos y negativos. En cambio, `entero.hs` tiene algunos errores en la resta que pueden provocar resultados incorrectos.
