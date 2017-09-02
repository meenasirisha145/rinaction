#importing data
library(ggplot2)
data(diamonds)
diamonds
summary(diamonds)
diamonds$color
str(diamonds)
hist(diamonds$price)
mean(diamonds$price)
median(diamonds$price)
count(diamonds$price)
