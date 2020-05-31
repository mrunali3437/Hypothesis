#Load data
Wc<-read.csv("C:/Users/abc/Desktop/Data science/Dataset/Linear Regression/WC_AT.csv")

# Visualization
install.packages("lattice")
library(lattice)
dotplot(Wc$Waist, main="Dot Plot of Waist Circulations",col="dodgerblue4")
dotplot(Wc$AT, main="Dot Plot of AT Circulations", col="dodgerblue4")
boxplot(Wc$Waist,col="dodgerblue4")
boxplot(Wc$AT,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(Wc)
#Model building
model<- lm(AT~Waist,data =Wc)
summary(model)
#Preparing new data frame with new data
new_Waist=data.frame(Waist=c(40,75,400))
#Predict for the new data
AT1=predict(model,new_Waist)
#Print predicted value
AT1
