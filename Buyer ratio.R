

#h0: = (Male-female ratio is equal across all regions)
#ha: != (Male-female ratio is not equal accross regions)

buyer_ratio <- read.csv("C:/Users/admin/Desktop/Datascience/Hypothesis/BuyerRatio.csv")
summary(buyer_ratio)

#deleting the first column
buyer1 <- buyer_ratio[,2:5]

test <- chisq.test(buyer1)
test

#we cant reject null hypothesis
#therefore the Male-Female buyer Ratio's are similar accross regions