#linear regression modeling
data(women)
women
?women
#linear regression y=mx+c
attach(women)
length(women$height)
length(women$weight)
cov(women$height,women$weight)
cor(women$height,women$weight)
(weight.lm=lm(weight~height,data=women))#to print it directly with this command otherwise we have to type the variable in the next line
summary(weight.lm)
plot(women$height,women$weight)
abline(weight.lm,col='blue')#line of best fit
abline(v=62)#to draw vertical line
abline(h=140)#to draw horizontal line
abline(v=c(62,64,66))#to draw multiple lines
abline(h=c(130,150))

