#importing data
data=read.csv(file=file.choose(),stringsAsFactors = F)
data
str(data)
names(data)
attach(data)
sum(data$cpp)
mean(data$cpp)
length(data$sname)
data$pdp>50
data$dob=as.Date(data$dob,format="%d-%b-%y")
str(data$dob)
x=difftime(Sys.Date(),data$dob,units="weeks")
x
(data$age=ceiling(as.numeric(x)/52.5))
head(data$age)
str(data)
data[data$age>25,][1:5]
data[data$age>20,][1:5]
