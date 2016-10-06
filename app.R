library(caret)
filename <- "/Users/sumit/GitHub/r-tutorial/iris.csv"
dataset <- read.csv(filename, header=FALSE)
colnames(dataset) <- c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width","Species")
validation_index <- createDataPartition(dataset$Species, p=0.80, list=FALSE)
validation <- dataset[-validation_index,]
dataset <- dataset[validation_index,]
dim(dataset)
