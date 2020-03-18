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


## Práctica 1: <a name="P1"></a>

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
```
