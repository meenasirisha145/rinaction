#question1
sales=c(10000,13000,12000,15000)
sales
names(sales)=c("Q1","Q2","Q3","Q4")
sales
table(sales)
barplot(sales,main="sales of coy",xlab="quarter",ylab="sales")
sales>11000
sales[3]

