#assignment6
#creating a vector----
set.seed(1234)
v=ceiling(runif(40,10,200))
v
s=ceiling(seq(10,200,length.out = 40))
s
length(s)
#matrix----
m=matrix(s,nrow=5)
m
#product of each row----
m[1,]*m[2,]*m[3,]*m[4,]*m[5,]
addmargins(m,1,sum)

