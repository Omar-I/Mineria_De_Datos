getwd()
setwd("/home/Omar/Documentos/MineriaDeDatos/Unidad2")
getwd()

# Importing the dataset
dataset <- read.csv('Demographic-Data.csv')

# Splitting the dataset into the Training set and Test set
# Install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$Internet.users, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Internet.users ~ Birth.rate,
               data = dataset)
summary(regressor)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$Birth.rate, y=training_set$Internet.users),
             color = 'red') +
  geom_line(aes(x = training_set$Birth.rate, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Internet.users vs Experience (Training Set)') +
  xlab('Years of experience') +
  ylab('Internet.users')

# Visualising the Test set results
ggplot() +
  geom_point(aes(x=test_set$Birth.rate, y=test_set$Internet.users),
             color = 'red') +
  geom_line(aes(x = training_set$Birth.rate, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('Internet users vs Birth rate (Test Set)') +
  xlab('Birth rate') + ylab('Internet users')
