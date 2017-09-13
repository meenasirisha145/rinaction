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

#rank
rank(marks)
