#install.packages('e1071', dependencies = TRUE)
#install.packages("mlbench")
library(e1071)

#Naive Bayes en Dataset mlbech.Ionosphere
data(Ionosphere, package = "mlbench")

#primeros elementos de Ionosphere
head(Ionosphere)
#resumen de las columnas de Ionosphere
summary(Ionosphere)

#histograma de la variable V16
hist( Ionosphere$V16, freq =FALSE)

#generar un dataset desordenado
IonosphereShuffle <- Ionosphere[sample(nrow(Ionosphere)),]

#Train  Ionosphere 36 a 351
model <- naiveBayes(Class ~ ., data = IonosphereShuffle[36:nrow(IonosphereShuffle),])

#Test  Ionosphere 1 a 35
pred <- predict(model, IonosphereShuffle[1:35,])

#Matriz de confusion
table(pred, IonosphereShuffle[1:35,]$Class)



