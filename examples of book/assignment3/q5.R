#question 5
s=c("ds","law")
c=c("graduate","pg","diploma")
st=c("s1","s2","s3","s4","s5")
set.seed(1234)
amount=ceiling(runif(2*3*5,1000,2000))
amount
amountarray=array(amount,c(5,3,2),dimnames=list(st,c,s))
amountarray
amountarray[5,2,1]
amountarray["s1","diploma","law"]
apply(amountarray,c(1),sum)
apply(amountarray,c(2),sum)
apply(amountarray,c(3),sum)
apply(amountarray,c(2,3),mean)
apply(amountarray,c(1,2),mean)
summary(amountarray)
