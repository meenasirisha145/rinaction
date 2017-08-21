n=c(2,3,5)
s=c("aa","bb","cc")
b=c(TRUE,FALSE,TRUE)
d=c('M','F','M')
df=data.frame(n,s,b,d,stringsAsFactors = T)
df
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
