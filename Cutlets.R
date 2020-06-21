#Hypothesis Testing

#h0 : = (The Diameter of cutlets in unit A and unit B are same) (Means are equal)
#ha : != (The Diameter of cutlets in unit A and unit B are not same) (Means are not equal)


cutlet <- read.csv("C:/Users/admin/Desktop/Datascience/Hypothesis/Cutlets.csv")
View(cutlet)
cutlet_unit1<- cutlet[,1]
cutlet_unit2 <- cutlet[,2]

summary(cutlet)
boxplot(cutlet)

t.test(cutlet_unit1,cutlet_unit2, alternative = "two.sided")

#There is a significant difference in the diameter of the cutlets in unit A and unit B
