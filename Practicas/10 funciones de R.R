#10 Funciones de R

Función 1: c(a1, a2,…)

Esta función permite concatenar (unir) objetos: variables, texto, números, etc.

Ejemplo:
  
  x <- c(1,2,3)
t <- c("uno","dos","tres")
x; t

RESULTADO:
  [1] 1 2 3
[1] "uno"  "dos"  "tres"


Función 2: names(x) <- valor
Permite asignar nombres a los elementos de una variable

Ejemplo:
  
  x <- c(2,4,6)  # Asigna 3 valores a la variable x
names(x) <- c("I","II","III")  # Asigna nombres a los 3 valores anteriores
x
RESULTADO:
  ##   I  II III 
  ##   2   4   6
  
  
  
  Función 3: sqrt(x)
Calcula la raíz cuadrada de un número

Ejemplo:
  
  sqrt(9)
RESULTADO:
  ## [1] 3
  
  Ejemplo:
  
  
  sqrt(2)
RESULTADO:
  ## [1] 1.414214
  
  Función 4: cat(“texto”,x1,“texto”,x2,…,“\n”)
Esta función escribe texto y variables en la salida.

La secuencia de escape “\n” produce una nueva línea e impide que la siguiente salida del programa quede en la misma línea.

Ejemplo:
  
  x <- 2
y <- 4
cat(x,"elevado a",y,"es",x ^ y,"\n")
RESULTADO:
  ## 2 elevado a 4 es 16
  
  
  
  Función 5: length(x)
Muestra el número de elementos de un vector

Ejemplo:
  
  
  x <- 1:20  # Se guarda en x los números del 1 al 20
length(x)  # Número de elementos de x
RESULTADO:
  ## [1] 20
  
  
  Función 6: trunc(x)
Elimina los decimales de un número

Ejemplo:
  
  
  trunc(1.999999)
RESULTADO:
  ## [1] 1
  
  Ejemplo:
  
  
  x <- 56.13
trunc(x)
RESULTADO:
  ## [1] 56
  
  
  
  
  Función 7: round(x,decimales=0)
Redondea un número con los decimales indicados, si no se indican decimales se redondea sin decimales. Cuando el decimal que sigue al último que se mostrará es 5 o mayor de 5 entonces se aproxima el último decimal.

Ejemplo:
  
  
  round(6.78)  # Al no indicar decimales el resultado es un número entero aproximado
RESULTADO:
  ## [1] 7
  
  Ejemplo:
  
  
  round(6.78,1) # Se redondea con un decimal
RESULTADO:
  ## [1] 6.8
  
  Ejemplo:
  
  
  round(10.627,1) # Como el segundo decimal es menor de 5 no se aproxima
RESULTADO:
  ## [1] 10.6
  
  
  Función 8: runif(n,inicio=0,fin=1)
Genera n números al azar entre inicio y fin. Si no se indica inicio y fin se generan entre 0 y 1

Ejemplo:
  runif(5)  # 5 números al azar entre 0 y 1
RESULTADO:
  ## [1] 0.36124751 0.27944097 0.07655032 0.51075857 0.66329734
  
  Ejemplo:
  runif(5,1,10)  # 5 números al azar entre 1 y 10
RESULTADO:
  ## [1] 7.588251 8.722883 9.094666 3.539671 6.977387
  
  Ejemplo:
  trunc(runif(20,1,10))  # 20 números enteros al azar entre 1 y 10
RESULTADO:
  ##  [1] 6 9 8 7 9 7 4 4 2 6 8 9 1 9 6 7 3 1 1 4
  
  
  
  
  
  Función 9: sum(x)
Suma todos los elementos de un vector x

Ejemplo:
  x <- runif(100,1,10)  # Se generan 100 números al azar entre 1 y 10 y se guardan en la variable x
sum(x) # Suma de los 100 números al azar
RESULTADO:
  ## [1] 586.0735
  
  
  Función 10: any(condición)
Devuelve T si algún elemento cumple la condición Ejemplo:
  
  Ejemplo:
  x <- runif(10, -10 ,100) # Se generan 10 números aleatorios entre -10 y 100
if(any(x < 0)) cat("En x hay números negativos\n") # Si algún números de x es negativo
RESULTADO:
  ## En x hay números negativos
  