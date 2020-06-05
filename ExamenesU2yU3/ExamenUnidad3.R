getwd()
setwd("/home/omar/Documentos/Universidad/ExamenU3")
getwd()

Social<- read.csv('Social_Network_Ads.csv')
#Librerias que utilizamos 
#install.packages("e1071")
#install.packages("caret")
library(e1071)
library(caret)

#Lo utilizamos para saber que variable podemos utilizar 
str(Social)
Social$Purchased <- as.factor(Social$Purchased)

#Limitamos el csv
Social =Social[2:5]
head(Social)

#aplicamos naiveBayes
set.seed(2020)
#Creamos una particon de nuestro csv y tomamos la variable Gender para aplicarle naiveBayes 
#tomamos el 80% del csv para aplicarle naiveBayes y creamos nuestra lista en forma de arrays
CDP <- createDataPartition(Social$Purchased, p =0.67, list = F)
mod <- naiveBayes(Purchased ~ ., data  = Social[CDP,])
mod

#creamos una funcion predict
#agarramos el resultado del naiveBayes y creamos una prediccion en base a todas las varibles que quedaron fuera de la particion 
##por eso el [-t,ids,]
Pre <- predict(mod,Social[-CDP,])

#creamos una funcion table 
tab <- table(Social[-CDP,]$Purchased, Pre, dnn = c("Actual","Predi"))

#library(caret)
confusionMatrix(tab)

