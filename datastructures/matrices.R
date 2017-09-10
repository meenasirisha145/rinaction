x=matrix(1:12,nrow=4,byrow=T)
x
x[5]
class(x)
x[2,2]
x[,c(1,2)]
x[c(2,4),]
x[c(1,2),3]
dim(x)
colnames(x)=c('sub1','sub2','sub3')
x
rownames(x)=paste('R',1:4,sep='')
x
colnames(x)=paste('c',1:3,sep='')

x

y=c(8,6,4,1)
cbind(x,y)
z=c(8,9,1)
rbind(x,z)
x
x[,2]>6
x[,2]>5
x[x[,2]>5]

cells = c(1,26,24,68)
 rnames <= c("R1", "R2")
cnames <- c("C1", "C2") 
mymatrix <- matrix(cells, nrow=2,  byrow=F,
                     dimnames=list(rnames, cnames))
mymatrix

