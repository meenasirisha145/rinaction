sqrt(729)
b=1947.0
b=as.character(b)
b
class(b)
x=c(1,2,3,4,5,6)
class(x)
y=c(1,'a',2,'b')
class(y)
rep(c('a','a',1:5,7:9,11))
seq('a',1:5,7:9,11)
x=c(rep('a',2),seq(1,5),seq(7,11, by=2))
x
y=c(1,2,NA,4)
y[!is.na(y)]
z=sample(1:100,50,replace=T)
z
class(z)
iris
class(iris)
sapply(iris,class)
str(iris)
summary(iris)
head(iris)
fix(iris)
rownames(iris)
colnames(iris)
(nrows=nrow(iris))
(ncols=ncol(iris))
iris[(nrows-1):nrows,(ncols-1):ncols]
iris[iris$Sepal.Width>3.5,]
iris[which(iris$Sepal.Width>3.5),]
subset(iris,Species=='versicolor')
x=c(paste('var',1:3),paste('pred',1:3))
x
table(iris$Species,iris$Sepal.Width)
attach(iris)
ifelse(Sepal.Length>5,"greater than 5","lessthan 5")
output=character(nrow(iris))
for(i in c(1:nrow(iris))){
  if(Sepal.Length[i]>5){
    output[i]="greater than 5"
  }
  else
  {
    output[i]="less than 5"
    
  }
}

