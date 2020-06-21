#Hypothesis Testing

# h0: = (Defective % are same accross the regions)
# ha: != (Defective % are not same accross the regions)
install.packages("data.table")

telecall <- read.csv("C:/Users/admin/Desktop/Datascience/Hypothesis/Costomer+OrderForm.csv")
summary(telecall)

#Lets convert all the variables as factor
telecall$Phillippines<- as.factor(telecall$Phillippines)
telecall$Indonesia <- as.factor(telecall$Indonesia)
telecall$Malta <- as.factor(telecall$Malta)
telecall$India <- as.factor(telecall$India)

telecall_table <- data.table::data.table(Phillippines = c(29,271), Indonesia = c(33,267), Malta = c(31,269), India = c(20,280))
row.names(telecall_table) <- c("Defective", "Error Free")
telecall_table


chisq.test(telecall_table)
#Here we got the x-Squared value as 3.859 and the p-value as 0.2771 which is greater than 0.05 i.e 5% significance
#we use null hypothesis