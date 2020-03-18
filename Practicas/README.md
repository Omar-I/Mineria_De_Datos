# Mineria_De_Datos

INGENIERÍA INFORMÁTICA
UNIDAD 1
Alumnos:
16210791 Quintero Renteria Omar Israel
16210790 Pacheco Ramirez Hugo Andres

## INDICE


[Practice 1](#P1)

[Practice 2](#P2)

[Practice 3](#P3)

[Practice 4](#P4)

[Practice 5](#P5)


## Practice 1: <a name="P1"></a>

Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:

Create an R script that will count how many of these numbers fall between -1 and 1 and divide
by the total quantity of N

You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N


Hint:
1. Initialize sample size
2. Initialize counter
3. loop for(i in rnorm(size))
4. Check if the iterated variable falls
5. Increase counter if the condition is true
6. return a result <- counter / N

```R
n <-10
c<-0

for (i in rnorm (n,mean = 0,sd = 1)) {
  if(i>-1 && i<1){
    c<-c+1
  }
}

r <- c / n
r
````

## Practice 2: <a name="P2"></a>
### Functions

Practice find 20 more functions in R and make an example of it.

#### Función 1: c(a1, a2,…)

Esta función permite concatenar (unir) objetos: variables, texto, números, etc.

```R
Ejemplo:

x <- c(1,2,3)
t <- c("uno","dos","tres")
x; t

RESULTADO:
# [1] 1 2 3
# [1] "uno"  "dos"  "tres"
```

#### Función 2: names(x) <- valor
Permite asignar nombres a los elementos de una variable

Ejemplo:
```R
x <- c(2,4,6)  # Asigna 3 valores a la variable x
names(x) <- c("I","II","III")  # Asigna nombres a los 3 valores anteriores
x
RESULTADO:
##   I  II III
##   2   4   6
```
#### Función 3: sqrt(x)
Calcula la raíz cuadrada de un número

Ejemplo:
```R
sqrt(9)
RESULTADO:
## [1] 3


Ejemplo:
sqrt(2)
RESULTADO:
## [1] 1.414214

#### Función 4: cat(“texto”,x1,“texto”,x2,…,“\n”)
Esta función escribe texto y variables en la salida.

La secuencia de escape “\n” produce una nueva línea e impide que la siguiente salida del programa quede en la misma línea.

Ejemplo:

x <- 2
y <- 4
cat(x,"elevado a",y,"es",x ^ y,"\n")
RESULTADO:
## 2 elevado a 4 es 16
```

#### Función 5: length(x)
Muestra el número de elementos de un vector

Ejemplo:
```R

x <- 1:20  # Se guarda en x los números del 1 al 20
length(x)  # Número de elementos de x
RESULTADO:
## [1] 20
```

#### Función 6: trunc(x)
Elimina los decimales de un número

Ejemplo:
```R
trunc(1.999999)
RESULTADO:
## [1] 1

Ejemplo:

x <- 56.13
trunc(x)
RESULTADO:
## [1] 56
```

#### Función 7: round(x,decimales=0)
Redondea un número con los decimales indicados, si no se indican decimales se redondea sin decimales. Cuando el decimal que sigue al último que se mostrará es 5 o mayor de 5 entonces se aproxima el último decimal.

Ejemplo:

```R
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


#### Función 8: runif(n,inicio=0,fin=1)
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
```

#### Función 9: sum(x)
Suma todos los elementos de un vector x

Ejemplo:
```
x <- runif(100,1,10)  # Se generan 100 números al azar entre 1 y 10 y se guardan en la variable x
sum(x) # Suma de los 100 números al azar
RESULTADO:
## [1] 586.0735
```

#### Función 10: any(condición)
Devuelve T si algún elemento cumple la condición Ejemplo:
```R
x <- runif(10, -10 ,100) # Se generan 10 números aleatorios entre -10 y 100
if(any(x < 0)) cat("En x hay números negativos\n") # Si algún números de x es negativo
RESULTADO:
# En x hay números negativos
# Función que cuenta la cantidad de vocales en una cadena que
# se pasa como argumento
```

#### Funcion 11:
Creando un data frame y mandando llamar a la funcion fn.show
```R
contar_vocales <- function(frase)
{
  cantidad_vocales <- 0
  frase <- tolower(frase)
  frase <- strsplit(frase, "")[[1]]
 
  for (i in frase)
  {
    if (i %in% c("a", "e", "i", "o", "u"))
    {
      cantidad_vocales <- cantidad_vocales + 1
    }
  }
  cantidad_vocales
}

resultado <- contar_vocales("Hola mundo, nuevamente")
resultado

```

#### Función 12:
Funcion que establece un Data Frame
```R
datos <- data.frame(nombres = c("Oscar", "Paty", "Lulu"), edades = c(20,34,56))
datos
Resultado:
##   nombres edades
## 1   Oscar     20
## 2    Paty     34
## 3    Lulu     56
```

#### Función 13:
Crear una función que recibe un vector numérico y muestra valores media, mas alto y bajo de un vector así como devolver el vector ordenado.
```R
fnshow.datos.vector  <- function (argmivector, argmodo ) {
  print("Datos del vector. Media, Máximo, mínimo y ordenado")
  print(paste("Media: ",round(mean(argmivector),2)))
  print(paste("Máximo: ",max(argmivector)))
  print(paste("Mínimo: ",min(argmivector)))
  if (argmodo == 'A') {
    print(sort(argmivector, decreasing = FALSE)) # menor a mayor
  } else {
    print(sort(argmivector, decreasing = TRUE)) # mayor a menor
  }
} #
Resultado:
## [1] "Datos del vector. Media, Máximo, mínimo y ordenado"
## [1] "Media:  4.5"
## [1] "Máximo:  6"
## [1] "Mínimo:  3"
## [1] 3 4 5 6
```

#### Función 14:
Asignar valores por defecto (default value) a las variables en la declaración de las funciones. Por ejemplo:
```R
f <- function(x = NULL, y = NULL)
{
  if (!is.null(x) & !is.null(y)){
    print(x+y)
  }else{
    print('faltan valores')
  }
}

f(x = 2, y = 0)
2
f(x = 2)
"faltan valores"
f(y = 0)
"faltan valores"
```

#### Funcion 15:
Tiene la capacidad de capturar todos los valores pasados a la función que no coinciden con ningún argumento. De este modo, podemos pasar a una función una cantidad no prefijada de valores.
```R
sumar_pares <- function(...)
{
  valores <- c(...)
  if(!is.numeric(valores)) return('NaN')
 
  contador <- 0
  for(n in valores){
    if(n%%2 == 0){
      contador <- contador + n
    }
  }
contador
}

sumar_pares(1:10)
30
```


#### Funcion 16:
En R, es posible revisar el contenido del ambiente de una función, e incluso encontrar el valor asociado a un símbolo determinado en esos ambientes. Para ello se usan las funciones environment(), ls() y get(), como se muestra a continuación.

```R
ls( environment(duplica) )
## [1] "fff" "n" get( "n"
, environment(duplica) )
## [1] 2 ls( environment(triplica) )
 ## [1] "fff" "n"
get( "n", environment(triplica) )
 ## [1] 3
```

#### Funcion 17:
Para empezar, supóngase que se tiene un data frame, exclusivamente de columnas numéricas y se quiere conocer el promedio de cada una de estas columnas. En este caso, la función sapply() permite aplicar una operación o una función a cada uno de los elementos la lista o data frame, dado como argumento. Así, la operación deseada se obtiene de la siguiente manera.

```R
(misDatos <- data.frame(uno = runif(5, 10.5, 40.3), dos = runif(5),
tres = runif(5, 155, 890)))
## uno dos tres ## 1 17.66 0.7023 433.0
## 2 33.04 0.8633 875.6
 ## 3 38.24 0.9655 283.5
## 4 27.80 0.1671 156.1
## 5 11.53 0.2866 464.6 sapply(misDatos, haz_promedio, simplify = TRUE)
## uno dos tres
## 25.652 0.597 442.572
# aquí se podría haber usado la función 'mean' en vez de
# 'haz_promedio'
```

#### Funcion 18:
Las funciones rbind() y cbind(), son otras que se pueden utilizar para construir matrices, dando, ya sea los renglones individuales o las columnas individuales, respectivamente.

```R
m1 <- rbind(c(1.5, 3.2, -5.5), c(0, -1.1, 60)) m1
 ## [,1] [,2] [,3]
## [1,] 1.5 3.2 -5.5
 ## [2,] 0.0 -1.1 60.0 class(m1[1, ])
 # ahora compuesta de números reales
 ## [1] "numeric" (m2 <- cbind(c(1.5, 3.2, -5.5), c(0, -1.1, 60)))
## [,1] [,2]
## [1,] 1.5 0.0
## [2,] 3.2 -1.1
## [3,] -5.5 60.0
```

#### Función 19:
Una vez definida una función, hay dos funciones de R que permiten revisar su lista de argumentos formales, a saber: args() y formals(). En el siguiente código se ve el comportamiento de cada una de ellas.
args(MiFunc.v2)

```R
function (x, yyy, z = 5, t)
## NULL (ar <- formals("MiFunc.v2"))
 # puede o no llevar comillas
## $x
##
##
## $yyy ## ## ## $z
## [1] 5
##
## $t
# Si se quiere revisar el argumento z, se hace así: ar$z
## [1] 5
```

#### Función 20:
En programación este concepto se implementa mediante una técnica conocida como recursividad (Dijkstra [1960]), la que, en términos sencillos, se puede ver como la posibilidad de una función de llamarse o invocarse a sí misma. Para el caso del factorial, en R, esta función se puede programar de la siguiente manera:

```R
MiFact <- function(n) {
if (n==0) return (1) # salida inmediata
if (n > 0) return (n*MiFact(n-1)) return (NULL)
- caso fallido
- Ahora se usa la función con 5 y 8
 MiFact(5)
```

### Referencias:


- [1]    de Haro, J. J. (n.d.). Funciones de R. Retrieved February 18, 2020, from https://rstudio-pubs-static.s3.amazonaws.com/64478_60ed30aabd53499691f96f46ed9720db.html

- [2]    Garrett Grolemund, G. G. (s.f.). 19 Funciones | R para Ciencia de Datos. Recuperado 18 febrero, 2020, de https://es.r4ds.hadley.nz/funciones.htmlFunción 1: c(a1, a2,…)
