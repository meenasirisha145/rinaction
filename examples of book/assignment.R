#question:1
x=c(10,20,30,10,40,50)
x1=rep(x,c(3,5,2,2,4,4))
x1
table(x1)
mean(x1)
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

#m2=c(12,63,61,63,87,65,1,24,67,52,70,55,29,93,30,84,29,27,19,
#24,32,31,16,4,22,82,53,92,84,5,46,27,31,51,19,76,21,26,
#100,81,56, 65,32,63,33,51,68,49,25,77)#
set.seed(1234)
m2=ceiling(rnorm(100,60,15))
m2
mean(m2)
cat(m2)
range(m2)
table(m2)
m2[c(1,2,3,4,5)]=c(0,10,11,99,100)#to check the cut command replacing first 5 values
head(m2,n=5)

breaks=seq(0,100,by=10)#to create class intervals
breaks
m2.cuts=cut(m2,breaks)#default right=true
m2.cuts
head(m2.cuts,n=5)
#head(m2,n=5)
#m2.table=table(m2.cuts)#doesnot displays NA values
m2.table=table(m2.cuts,useNA='ifany')#displays NA values
m2.table
cbind(m2.table)
hist(m2.table)
hist(m2.table,breaks=10)

#correct the problem of NA
s=cut(m2,breaks=breaks,include.lowest=T)#default right=T
as.character(head(s,n=5))
head(m2,n=5)
table(s,useNA='ifany')

#by making right=F
s2=cut(m2,breaks=breaks,include.lowest=T,right=F)
as.character(head(s2,n=5))
head(m2,n=5)
table(s2,useNA='ifany')

#Giving Labels
m2lb=cut(m2,breaks=breaks,include.lowest=T,labels=LETTERS[1:length(breaks)-1])#default right=T
as.character(head(m2lb,n=5))
head(m2,n=5)
table(m2lb,useNA='ifany')
cbind(table(m2lb,useNA='ifany'))
hist(table(m2lb,useNA='ifany'))


#question:2

marks=c(10 , 12, 13, 14 , 17)
mean(Marks)
students=c(5,7,9,8,4)
marks1=marks*students
marks1
students1=sum(students)
mean=sum(marks1)/students1
mean
#other method for discrete
x=rep(marks,students)
table(x)
mean(x)
#continuous
marks2=c("10-20","20-30","30-40","40-50")
students2=c(5,7,9,8)
df2=data.frame(marks2,students2)
  str(df2)
midpt2=c(15,25,35,45)

df2$mid2=midpt2
df2
df2$total=df2$students2*df2$mid2
df2$total
df2
sum(df2$total/sum(students2))

x=rep(df2$mid2,df2$students2)
mean(x)






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


#example for normal frequency distribution with classes
set.seed(1234)
p=ceiling(rnorm(100,60,15))
p
mean(p)
table(p)
cbind(table(p))
range(p)
#breaks=seq(min(p),max(p),10)-to create class intervals
breaks=seq(20,100,10)
breaks
?cut

