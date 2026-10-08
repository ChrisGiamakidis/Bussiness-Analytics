library(readr)
customers <- read_csv("Mall_customers.csv")
customers$CustomerID <- as.integer(customers$CustomerID)
customers$Genre <- factor(customers$Genre, labels = c("Male", "Female"))

names(customers)[names(customers) == "Annual Income"] <- "AnnualIncome"
names(customers)[names(customers) == "Spending Score"] <- "SpendingScore"
