#Examen Unidad 4
#K-Means Clustering
#Quintero Renteria Omar Israel 16210791
#Pacheco Ramirez Hugo Andres 16210790

#Asignamos la nueva ruta de trabajo
getwd()
setwd("/home/omar/Documentos/Universidad/ExamenU4")
#Corroboramos si ya se actualizó la ruta de trabajo
getwd()

#Creamos la variable Iris y le asignamos la data del csv con el que estamos trabajando
Iris = read.csv('iris.csv')
#Del csv, tomamos las columnas con las que trabajaremos
Iris = Iris[1:2]

# Usando el método "elbow" para encontrar el número óptimo de clusters(grupos)
set.seed(6)
wcss = vector()
for (i in 1:6) wcss[i] = sum(kmeans(Iris, i)$withinss)
plot(1:6,
     wcss,
     type = 'b',
     main = paste('Iris'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

#Definimos K-Means al conjunto de datos
set.seed(29)
kmeans = kmeans(x = Iris, centers = 3)
y_kmeans = kmeans$cluster


# Visualizando los Clusters(grupos)
#Instalaremos la libreria Cluster para poderla utilizar en nuestros ploteos
install.packages('cluster')
library(cluster)

clusplot(Iris,
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = FALSE,
         main = paste('Iris'),
         xlab = 'Petal Width',
         ylab = 'Petal Length')
