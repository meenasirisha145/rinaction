n=c(2,3,5)
s=c("aa","bb","cc")
b=c(TRUE,FALSE,TRUE)
d=c('M','F','M')
df=data.frame(n,s,b,d,stringsAsFactors = T)
df

attach(df)
df


length(df)
str(df)
summary(df)
str(mtcars)
?mtcars
head(mtcars)
?head
tail(mtcars)
head(mtcars, n=8)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
mtcars[1:3]
mtcars[1:5,1:3]
mtcars[1:5,]
names(mtcars)
mtcars["cyl"]
x=c('cyl','mpg','gear')
mtcars[x]
mtcars[c(1,5),]
rownames(mtcars)
mtcars[1,2]
mtcars$disp
mtcars[mtcars$disp>300,]
mtcars[mtcars$disp>300 & mtcars$mpg>15,]
mtcars[mtcars$hp>150|mtcars$mpg>15,]
mtcars[rownames(mtcars)=='Fiat 128',1:5]
subset(mtcars,carb==2)
mtcars[1]
library(dplyr)
search()
slice(mtcars,1L)
slice(mtcars,5:n())
mtcars
mtcars$hp
attach(mtcars)
hp
detach(mtcars)
mtcars
hp
mtcars$hp
mtcars$mpg = NULL
str(mtcars)
mtcars$jk =mtcars$vs
str(mtcars)

























































sort(mtcars[1,])
sort(mtcars[,1])
attach(mtcars)
sort(mpg,decreasing=T)
sort(mpg,decreasing=F)

