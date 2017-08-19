vec1 =c(1,4,6,8,10)
vec1
vec2=1:100
vec2
vec3=c(vec1,0,vec2)
vec3
vec1[5]
vec1[1:3]
vec1[2]=15
vec1
vec3=seq(from=0,to=1,by=0.25)
vec3
vec1+vec2
vec1[vec1>2]
vector("numeric",5)
vec1=vec1[-3]
vec1
s=c(22,56,9,84,5,89)
l=c(F,T,F,T,F,T)
s[l]
s=s[-c(1,3)]
s
v=c("mary","sue")
v
names(v)=c("first","second")
v
v[c("second","first")]
v
x=c("first"=3,"second"=6,"third"=9)
x
x["third"]
x[c("first","third")]
x
length(x)
x="meena"
x
substr(x,2,5)
x=c(5,6,9,8,5)
head(USArrests)

x

sort(x)
m=c(1,5,3,4,2)
m
order(m)
m[order(m)]
v=seq(2,100,2)
v
v=rep(2,5)
v
x=1:3
y=rep(x,3)
y
rep(x,c(1,5,6))
v=paste(1:6,8:9,sep="&")
v
r=paste('student',1:10,sep='-')
r
age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
mean(weight)

sd(weight)
cor(age,weight)
plot(age,weight)
v=seq(1,10,2)
v
rep(v,c(3))
rep(v,v(3))
rep(v,each=3)
x="good morning!"
nchar(x)
x=c("nature's", "best")
nchar(x)
x=c("nature's", " at its best ")
nchar(x)
fname="james"
lname="bond"
paste(fname,lname)
m = "Capital of America is Washington"
substr(m,1,18)
head(USArrests)
states=rownames(USArrests)
states
substr(x=states,start=1,stop=4)
states2=abbreviate(states)
states2
names(states2)=NULL
states2
abbreviate(states,minlength=5)
states
n=nchar(states)
n
states[which(n==max(n))]
s="Success is not final, failed is not fatal"
sub("failed","failure",s)
s
Names <- c("John", "Andrew", "Thomas") 
Designation <- c("Manager", "Project Head", "Marketing Head")
x=c(Names,Designation)
x
y=matrix(x,nrow=3,byrow=F)
colnames(y)=c("Names","Designation")
y
g=paste("a":"e",c("a","b","c","d","e"))
g

x=c('a','b','c')
y=c('a','b','c')
paste(x,y, sep='')
paste(rep(letters[1:5],5), c(letters[1:5],each=5))
rep(c('a','b',))
rep()
x=c("a","b","c","d","e")
paste(x,c(letters[1:5],each=5))

x=c(outer(letters[1:3], letters[1:3], FUN=paste, sep=""))
x
LETTERS[1:30]
month.abb[1:5]
months.Date(5)
month.name[1:5]
months.Date('10/03/2017')
julian(Sys.Date(), 1)
