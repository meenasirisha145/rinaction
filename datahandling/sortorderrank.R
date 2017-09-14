#sort order rank
set.seed(1123)
marks=ceiling(runif(11,5,10))
marks


#sort
sort(marks)
sort(marks,decreasing = T)
sort(-marks)
rev(sort(marks))


#order
order(marks)#indices of sorted data
marks
marks[order(marks)]#similar to sort(marks)
order(marks,decreasing = T)
order(-marks)#decreasing order
length(marks)
marks2=marks
marks2[5]=NA#check with NA value :display,position
marks2
order(marks2)#NA IS LAST
?order
order(marks2,na.last=NA)#removes NA values
length(marks2)#length is same
is.na(marks2)#logical vector if any
anyNA(marks2)#is there any NA

mean(marks2)#does not work with NA values
mean(marks2,na.rm=T)#calculates mean by removing na values
length(marks2)
order(marks2,na.last=NA)#NA is removed
order(marks2,na.last=F)#NA is first
order(marks2,na.last=T)#NA is last
length(order(marks2,na.last=T))
length(order(marks2,na.last=NA))#NA is removed
mean(order(marks2,na.last=NA))
#rank

?rank
table(marks)
marks
rank(marks,ties.method = 'first')#6-1,6-2,7-3,8-4,8-5,9-6,9-7,10-8,10-9,10-10,10-11
rank(marks,ties.method = 'average')#6-(1+2)/2) each 6 gets 1.5;(8+9+10+11)/4=9.5 each 10 gets 9.5
rank(marks,ties.method = 'max')
rank(marks,ties.method = 'random')
marks[8]=NA
marks
rank(marks2,na.last=NA)#NA is removed
rank(marks2,na.last=F)#NA is first
rank(marks2,na.last=T)#NA is last
length(rank(marks2,na.last=T))
length(rank(marks2,na.last=NA))
