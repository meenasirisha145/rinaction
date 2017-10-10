#apply functions
#array----
x=array(1:24,c(4,3,2))
x
r1=c(paste('c',1:4,sep=""))
r1
c1=c(paste('d',1:3,sep=""))
c1
y1=c(paste('s',1:2,sep=""))
y1
dimnames(x)=list(r1,c1,y1)
x
#dimnames(x)=list(c('c1','c2','c3','c4'),c('d1','d2','d3'),c('s1','s2'))
#x

#matrix----
(seq_len(length.out = 10))
m1=matrix(c(10:1,rep(5,10),rep(c(5,6),5),seq_len(length.out = 10)),byrow=F,ncol=4)
m1
(colnames(m1)=c('sub1','sub2','sub3','sub4'))
m1
rownames(m1)=c(paste0('R',1:10))
m1


#data frame-----
(df1=data.frame(sub1=10:1,sub2=5,sub2=rep(c(5,6),5),sub4=seq_len(length.out = 10)))

#list-----
(list1=list(sub1=10:1,sub2=rep(5,3),sub3=rep(c(5,6),4),sub4=seq_len(length.out = 10)))


#print objects
x
m1
df1
list1




#apply command-----
x
apply(x,1,sum)#dimension 1 represents row
apply(x,1,mean)
apply(x,2,sum)#dimension 2 represents column
apply(x,2,mean)
apply(x,3,sum)#dimension 3 is available in array only
apply(x,3,mean)
apply(x,c(1,2),sum)
apply(x,c(1,2,3),sum)
apply(x,c(2,3),sum)
apply(x,c(1,3),sum)
apply(x,c(3,1),sum)
apply(x,c(3,2),sum)


#add margins-----
class(apply(x,1,sum))#integer vector
addmargins(x,1,sum)#adds column values and create a row
addmargins(x,2,sum)#adds row values and create a column
addmargins(x,3,sum)#sum of two matrices of array
addmargins(x,c(1,2),sum)#creates row and column
addmargins(x,c(1,3),sum)
addmargins(x,c(2,3),sum)
x
m1
addmargins(m1,c(1,2),FUN=list(list(sum,sd,IQR),list(sum,mean,var)))



#apply functions------
m1=matrix(1:16,nrow=4)
m1
nrow(m1)
for (i in 1:nrow(m1)){
  print(mean(m1[i,]))
}
for (j in 1:ncol(m1)){
  print(mean(m1[,j]))
}
addmargins(m1,1)
addmargins(m1,2)
rowMeans(m1)
colMeans(m1)
addmargins(m1,1,FUN = mean)
addmargins(m1,2,FUN = mean)
addmargins(m1,c(1,2))
addmargins(m1,FUN=list(sum,mean))

#using apply function----

apply(m1,1,mean)
apply(m1,2,mean)[2]
a=array(1:24,dim=c(3,4,2))
a
apply(a,1,mean)
apply(a,2,mean)
apply(a,3,mean)
apply(a,c(1,3),mean)
apply(a,c(1,2),mean)
apply(a,c(1,2),mean)
apply(a,c(1,3),sum)
apply(a,c(1,3),mean)
apply(a,c(2,1),sum)
apply(a,c(1,2,3),sum)
apply(a,c(2,3),sum)

#apply:LAPPLY AND SAPPLY-----
#Works on list
x=list(a=1,b=1:3,c=10:100)
x
lapply(x,FUN=length)
lapply(x,FUN=sum)
#we will get a lsit as an output by using lapply

#SAPPLY----
#but if we want to get an output as a vector we have to use SAPPLY
sapply(x,sum)
rnorm(3,1)
for (i in 1:5){
  print(rnorm(3,i))
}
func=function(x){
  rnorm(3,x)
}
func(1)
sapply(1:5,func)
sapply(1:5,function(x) rnorm(3,x))
matrix(1,2,2)
matrix(2,2,2)
sapply(1:5,function(x) matrix(x,2,2))

#mapply----multi-variate apply
q1=matrix(c(rep(1,4),rep(2,4),rep(3,4),rep(4,4)),4,4)
q1
q2=mapply(rep,1:4,4)
q2
mapply(function(x,y) x^y,x=c(4,5),y=c(2,2))
mapply(function(x,y) x^y,x=c(1:5),y=c(2))
mapply(function(x,y) x^y,x=c(1:10),y=c(2,3))
mapply(function(x,y,z,k) (x+k)^(y+z),c(a=2,b=3),c(A=3,B=4),MoreArgs = list(1,2))
mapply(function(x,y,z,k) (x+k)^(y+z),x=c(1,2,3,4),y=c(3,4,5,6),z=c(1,2),k=c(2,3))



#eapply is used to find the list of user defined functions in the environment-----
ls()
A=c(1,3,5,7,9)
B=c(0,3,6,9,12)
C=list(x=1,y=2)
D=function(x){x+1}
ls()
lsf.str()
eapply(.GlobalEnv,is.function)
unlist(eapply(.GlobalEnv,is.function))
table(unlist(eapply(.GlobalEnv,is.function)))


#APPLY FAMILY-BY------
#it used for Data Frame splitting by Factors
mtcars
by(mtcars$am,mtcars$mpg,FUN = mean)
by(mtcars$mpg,mtcars$am,FUN = mean)
by(mtcars[,'disp'],INDICES = mtcars[,c('vs','am')],mean)
warpbreaks
by(warpbreaks,warpbreaks$tension,summary)
by(warpbreaks[,1:2],warpbreaks$tension,summary)
by(warpbreaks$breaks,warpbreaks$tension,sum)

#VAPPLY-----
x
vapply(x,FUN = length,FUN.VALUE = 0L)
