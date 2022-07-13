customer_data  = read.csv("D:/Mall_Customers.csv")
View(customer_data)
str((customer_data))
names(customer_data)
head(customer_data)
summary(customer_data)
summary(customer_data$Age)
sd(customer_data$Age)
summary(customer_data$Annual.Income..k..)
sd(customer_data$Annual.Income..k..)
summary(customer_data$Spending.Score..1.100.)
sd(customer_data$Spending.Score..1.100.)
a = table(customer_data$Gender)
barplot(a, main = "Gender Cmparison",
        ylab = "Count",
        xlab = "Gender",
        col = rainbow(2),
        legend = rownames(a))

pct = round(a/sum(a)*100)
lbs = paste(c("Female", "Male"), " ", pct, "%", sep = " ")
library(plotrix)
pie3D(a, labels = lbs,
      main = "Ratio of  Male & Female")

hist(customer_data$Age,
     col = "blue",
     xlab = "Age",
     ylab = "Frequency",
     labels = TRUE,
     main = "Count of Age Class")

boxplot(customer_data$Age,
        col = "green",
        main = "Boxplot of Age")

hist(customer_data$Annual.Income..k..,
     main = "Hist of Annual Income in K",
     xlab = "Annual Income Class",
     ylab = "Frequency",
     labels = TRUE,
     col = "pink")

plot(density(customer_data$Annual.Income..k..),
     col = "yellow",
     main = "Density plot of Annual Income",
     xlab = "Annual Income",
     ylab = "Frequency")

polygon(density(customer_data$Annual.Income..k..),
        col = "green")

boxplot(customer_data$Spending.Score..1.100.,
        horizontal = TRUE,
        col = "red",
        main = "Boxplot of Spending Score")

hist(customer_data$Spending.Score..1.100.,
     xlab = "Customer Spending",
     ylab = "Frequency",
     main = "Hist of Spending",
     labels = TRUE,
     col = "green")
