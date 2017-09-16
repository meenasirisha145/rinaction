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
diamonds$price
boxplot(diamonds$price,diamonds$depth)
nrow(diamonds[diamonds$price<500,])
length(diamonds$carat[diamonds$price<500])
length(diamonds)
length(diamonds$carat[diamonds$price<250])
length(diamonds$carat[diamonds$price>=15000])
