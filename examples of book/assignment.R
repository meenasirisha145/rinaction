#question:1
x=c(10,20,30,10,40,50)
rep(x,c(3,5,2,2,3,4))
x

#question3
set.seed(09)
m=ceiling(runif(50,0,100))
m
cat(m)
range(m)
breaks=seq(0,100,by=10)
m.cuts=cut(m,breaks)
m.cuts
m.table=table(m.cuts)
m.table
cbind(m.table)

#question:2

Marks=c(10 , 12, 13, 14 , 17)
mean(Marks)
m1=ceiling(runif(29,0,50))
set.seed(09)
m1
cat(m1)
breaks=seq(0,50,by=10)
m1.cuts=cut(m1,breaks)
m1.cuts

m1.table=table(m1.cuts)
m1.table
cbind(m1.table)
hist(m1.table)
pie(m1.table)



