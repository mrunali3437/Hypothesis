

fantaloons<- read.csv("C:/Users/admin/Desktop/Datascience/Hypothesis/Faltoons.csv")
summary(fantaloons)

fanta <- as.data.frame(as.factor(fantaloons$Weekdays), as.factor(fantaloons$Weekend))

fanta1 <- fantaloons
fanta1$Weekdays <- as.factor(fanta1$Weekdays)
fanta1$Weekend<- as.factor(fanta1$Weekend)
summary(fanta1)

fanta2 <- data.frame("Weekdays"=c(287,113), "Weekend" = c(233,167))
row.names(fanta2) <- c("Female","Male")

#now lets use the chisq.test() to test the hypothesis on fanta2
chisq.test(fanta2)

#the Proportion of Male and Female are not same
.