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

m2=c(12,63,61,63,87,65,1,24,67,52,70,55,29,93,30,84,29,27,19,
24,32,31,16,4,22,82,53,92,84,5,46,27,31,51,19,76,21,26,
100,81,56, 65,32,63,33,51,68,49,25,77)
m2
cat(m2)
range(m2)
breaks=seq(0,100,by=10)
m2.cuts=cut(m2,breaks)
m2.cuts
m2.table=table(m2.cuts)
m2.table
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



