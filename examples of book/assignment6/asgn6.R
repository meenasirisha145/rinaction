#assignment6
#creating a vector
set.seed(1234)
v=ceiling(runif(40,10,200))
v
s=seq(5,200,by=5)
s
length(s)
m=matrix(s,nrow=5)
m
apply(m,1,FUN=prod)
addmargins(m,1,sum)
