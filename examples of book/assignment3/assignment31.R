#question1
sales=c(10000,13000,12000,15000)
sales
namesales=c("Q1","Q2","Q3","Q4")
dfsales=data.frame(namesales,sales)
dfsales
str(dfsales)
table(dfsales)
cbind(dfsales)
dfsales$namesales
barplot(dfsales$sales,main="sales of coy",xlab="quarter",ylab="sales")
sales>11000
sales[3]

