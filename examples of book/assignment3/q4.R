#question4
guest=c("Achal", "Apoorva", "Lalit", "Goldie")
food=c(100, 300, 400, 500, 230,500, 200 , 150, 400, 700)
bills=matrix(food,nrow=2,byrow=T)
rownames(bills)=c("food","decor")
colnames(bills)=c("b1","b2","b3","b4","b5")
bills
c=c("bscanim","law","ds")
s=c(50,20,24)
m=c(25,10,12)
f=c(25,10,12)
hosts=data.frame(c,s,m,f)
hosts
mylist=list(guest,bills,hosts)
mylist
mylist[1]
mylist[2]
mylist[[3]]$m
mylist[[3]]$f
length(mylist[[1]])
sum(bills[c(1,0),])
sum(bills[c(2,0),])
