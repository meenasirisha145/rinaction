#mean-----
set.seed(1234)
x=ceiling(rnorm(100,50,10))#100 values with mean=50 and sd=10
x
(mean=sum(x)/length(x))
mean(x)
summary(x)


#trimming values-----
set.seed(1234)
y=ceiling(runif(100,50,100))#extreme values
y
mean(y)
mean(y,trim=.1)

#NA Values -Remove----
y[c(1,20,30)]=NA
y
length(na.omit(y))#3 NA values
mean(y)#error
mean(y,na.rm=T)
table(is.na(y))

#Trim
z=c(0:10,50)
z
mean(z)
mean(z,trim=0.1)

#mean absolute deviation----
x=c(3,6,6,7,8,11,15,16)
x
mx=mean(x)
mx
mdev=(x-mx)
mdev
abs(mdev)
(mabsdev=sum(abs(mdev))/length(x))#manual calculation for mad
mad(x,center = mean(x))#direct formula for mean absolute deviation#by default center is median


#mode----
x=c(2,3,4,4,5,5)
library(modeest)
m=mlv(x,method = "mfv")
m
