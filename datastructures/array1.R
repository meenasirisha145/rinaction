#arrays
#three dimensional array- 2 companies has three depts and each dept has 4 salesman
cp=c('c1','c2')
dept=c('dept1','dept2','dept3')
sm=c('sm1','sm2','sm3','sm4')
set.seed(1234)
sales=ceiling(runif(2*3*4,50,100))
sales
mean(sales)
cat(sales)
sales;length(sales)
salesarray=array(sales,c(4,3,2),dimnames=list(sm,dept,cp))
salesarray
salesarray=array(dim=c(4,3,2),data=sales,dimnames=list(sm,dept,cp))#order changed
salesarray
colnames(salesarray)
rownames(salesarray)
dimnames(salesarray)
length(salesarray)
nrow(salesarray)
ncol(salesarray)
dimnames(salesarray)[[3]]
dimnames(salesarray)[[1]]
dimnames(salesarray)[[2]]
dim(salesarray)
class(salesarray)
salesarray[3,2,1]
salesarray[3,2,]
salesarray[1,,]
salesarray[,,1]
salesarray[,1,]
apply(salesarray,c(1),sum)#salesman wise
apply(salesarray,c(2),sum)#department wise
apply(salesarray,c(3),sum)#companywise
apply(salesarray,c(2,3),sum)#all salesman -dept and company wise
apply(salesarray,c(1,2,3),length)#company wise
