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
h=hist(diamonds$price,main="prices of diamonds",xlab="no of diamonds",ylab="price",col="magenta")
h
h=hist(diamonds$price,main="prices of diamonds",xlab="no of diamonds",ylab="price",col="magenta")
h
h=hist(diamonds$price,main="prices of diamonds",xlab="no of diamonds",ylab="price",xlim=c(500,20000),breaks=20,col="magenta")
h
h=hist(diamonds$price,main="prices of diamonds",xlab="no of diamonds",ylab="price",xlim=c(500,20000),breaks=20,col="magenta")
text(h$mids,h$counts)
text(h$mids,h$counts,labels=h$counts,adj=c(0.5,-0.5))
