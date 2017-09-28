#Naive Bayes en Dataset mlbech.Ionosphere
data(Ionosphere, package = "mlbench")

#primeros elementos de Ionosphere
head(Ionosphere)
#resumen de las columnas de Ionosphere
summary(Ionosphere)

#Train  Ionosphere 36 a 351
model <- naiveBayes(Class ~ ., data = Ionosphere[36:nrow(Ionosphere),])

#Test  Ionosphere 1 a 35
pred <- predict(model, Ionosphere[1:35,])

#Matriz de confusion
table(pred, Ionosphere[1:35,]$Class)
