#assignment6

#QUESTION 1-----
#creating a vector---

s=ceiling(seq(10,200,length.out = 40))
s
length(s)
#matrix----
m=matrix(s,nrow=5)
m
#product of each row----
apply(m,1,prod)
#sum of each column
addmargins(m,1,sum)
apply(m,2,sum)
# Return a new matrix whose entries are those of 'matrix values' modulo 10
apply(m,c(1,2),function(x) x%%10)
#How many odd nos each column has
y=apply(m,c(1,2),function(x) x%%2!=0)
y
apply(y,2,sum)


# View the data set iris

# get the mean of the first 4 variables, by species

iris
aggregate(iris[1:4],list(iris$Species),mean)


#QUESTION 2-----
# Environment
# create a new environment
e=new.env()
e
e$a=matrix(1:12,nrow=4)
e$b=array(c(1:3*4*2),dim=c(3,4,2))
e$a
e$b
eapply(e,mean)
eapply(e,class)

#QUESTION 3-----
# create a list with 2 elements 1:20 and 55:100 and mpg and weight coln of mtcars dataset
v1=c(1:20)
v2=c(55:100)
l=list(v1,v2,mtcars$wt,mtcars$mpg)
l
# Find the sum of the values in each element
lapply(l,sum)#print the values in the form of list
sapply(l,sum)#print the values in the form of vector



