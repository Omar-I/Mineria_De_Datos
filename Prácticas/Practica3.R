#Practica 3
#Explicar  la función backward Elimination 
#1. Establecer directorio
getwd()
setwd("/home/Omar/Descargas")
getwd()
#2. Importar dataset
dataset <-('50_Startups.csv')
#3. Codificamos los datos categóricos 
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))
#4. División del conjunto de datos en el conjunto de entrenamiento y el conjunto de prueba
Install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
#5.Función backward Elimination 
backwardElimination <- function(x, sl) {
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1
  }
  return(summary(regressor))
}
SL = 0.05
training_set
backwardElimination(training_set, SL)
