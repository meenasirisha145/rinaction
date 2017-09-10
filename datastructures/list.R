#list
s=c('my first list')
s
v=c(25,26,18,39)
v
m=matrix(1:10,nrow=2)
m
n=c(1,5,8)
t=c('x','y','z')
g=c('M','F','M')
df=data.frame(n,t,g)
df
str(df)
df1=data.frame(n,t,g,stringsAsFactors =F )
df1
str(df1)
mylist=list(s,v,m,df1)
mylist
str(mylist)
mylist[3]
mylist[[3]]
mylist[['m']]
sum(mylist[[3]])
str(mylist[3])
str(mylist[[3]])
sum(mylist[3])#does not work because it is list
sum(mylist[[3]])#works bcoz it is vector
mylist[[4]]$t #bcoz name is not assigned to df have to use the index number
#if name is assigned as student then mylist$student$t
sum(mylist[[2]])
