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
