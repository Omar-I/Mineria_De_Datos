#Corroboramos en qué directorio estamos trabajando
getwd()
#Asignamos la nueva ruta de trabajo
setwd("/home/omar/Documentos/Universidad/ExamenU2")
#Corroboramos si ya se actualizó la ruta de trabajo
getwd()

#Creamos la variable Peliculas y le asignamos la data del csv con el que estamos trabajando
Peliculas <- read.csv("Project-Data.csv")
#Del csv, tomamos las columnas con las que trabajaremos
Peliculas <- Peliculas [c(3,6,8,18)]
#Asignaremos todos los estudios a mostrar en el gráfico
Peliculas<-Peliculas[Peliculas$Studio=="Buena Vista Studios"|Peliculas$Studio=="Fox"|Peliculas$Studio=="Paramount Pictures"|Peliculas$Studio=="Sony"|Peliculas$Studio=="Universal"|Peliculas$Studio=="WB",]
#Asignaremos todos los generos a mostrar en el gráfico
Peliculas<-Peliculas[Peliculas$Genre=="action"|Peliculas$Genre=="adventure"|Peliculas$Genre=="animation"|Peliculas$Genre=="comedy"|Peliculas$Genre=="drama",]

#Mostramos los primeros datos ingresados del csv *Código no necesario*
head(Peliculas)
#Mostramos los últimos datos ingresados del csv *Código no necesario*
tail(Peliculas)
#Les asignamos un nombre a las columnas a trabajar
colnames(Peliculas) <- c("Genre", "Studio", "BudgetMillions", "GrossUS")


# Estética del ploteo
#Instalaremos la libreria ggplot2 para poderla utilizar en nuestros ploteos
install.packages("ggplot2")
#Cargamos la librería ggplot2 
library(ggplot2)


#Creamos nuestro ploteo y asignamos las variables a mostrar en el gráfico
Grafico <- ggplot(Peliculas, aes(x=Genre, y=GrossUS,
                        color=Studio))
Grafico + geom_point() + geom_smooth(fill=NA)
r
#Creamos nuestras boxplots con las variables a mostrar
Grafico <- ggplot(Peliculas, aes(x=Genre, y=GrossUS,
                        color=Studio, size=BudgetMillions))

#Mostramos nuestras bloxplots creadas anteriormente
Grafico + geom_boxplot()

# Mostramos en nuestros boxplots los datos ingresados y asignamos un tamano
Grafico + geom_boxplot(size=1.2,color="Black") + geom_jitter()
#Sobreponer los boxplots sobre los datos
Grafico + geom_jitter() + geom_boxplot(size=0.3,alpha=0.5,color="Black") + ggtitle("Domestic Gross % by Genre") + xlab("Genre") + ylab("Gross %US")


