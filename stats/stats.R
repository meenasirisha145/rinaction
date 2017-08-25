a=c("a","a","p","p","a","p","a")
c=c("red","blue","green","magenta","green","black","blue","black")
y=c(2,1,2,4,1,0,1,2,4,2)


table(a)
table(c)
table(y)
cbind(table(a))
rbind(table(a))
barplot(y)
x=rep(10,3)
d=rnorm(100,mean=5,sd=6)
e=ceiling(d)
cat(e)
m=ceiling(runif(50,0,100))
set.seed(09)
m
cat(m)
range(m)
breaks=seq(0,100,by=10)
breaks
m.cuts=cut(m,breaks)
m.cuts
m.table=table(m.cuts)
m.table
cbind(m.table)
m.table