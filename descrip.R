library(stats)

#setting the project directory
setwd("D:/vii_sem_lab_submissions/R/R_practical")
#reading data
sales <- read.csv("sales_data.csv")
summary(sales)
#calculating average product sold
mean_product_sold = mean(sales$quantities_sold)
cat("mean of products sold:",mean_product_sold)

#calculating median of products sold
median_products_sold  = median(sales$quantities_sold)
cat("median of products sold:",median_products_sold)

#calculating the mode in dataset
library(modeest)
mode_quantities = mfv(sales$quantities_sold)
cat("mode of products sold:",mode_quantities)

#finding the range of prices
max = max(sales$price)
min = min(sales$price)

range = max - min
cat("price range is",range)

#alternate way
r = range(sales$price)
print(r)

#calculating variance
variance = var(sales$quantities_sold)
print(variance)



#calculating the standard deviation
std  = sd(sales$quantities_sold)
print(std)

#creating histogram
hist(sales$quantities_sold,xlab =  "quantities sold",col = "blue",border = "black")