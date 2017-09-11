#question3
p=c("p1","p2","p3","p4","p5")
m=c("m1","m2","m3","m4","m5","m6","m7","m8","m9","m10")
set.seed(1300)
x=ceiling(runif(5*10,30,100))
x
x1=matrix(x,nrow=5,dimnames=list(p,m))
x1
summary(x1)
cbind(x1)
lp=length(p)
lp
lm=length(m)
lm
m1=x1[,c(1,0)]
m1avg=sum(m1)/lp
m1avg
m2=x1[,c(2,0)]
m2avg=sum(m2)/lp
m2avg
m3=x1[,c(3,0)]
m3avg=sum(m3)/lp
m3avg
m4=x1[,c(4,0)]
m4avg=sum(m4)/lp
m4avg
m5=x1[,c(5,0)]
m5avg=sum(m5)/lp
m5avg
m6=x1[,c(6,0)]
m6avg=sum(m6)/lp
m6avg
m7=x1[,c(7,0)]/lp
m7avg=sum(m7)/lp
m7avg
m8=x1[,c(8,0)]
m8avg=sum(m8)/lp
m8avg
m9=x1[,c(9,0)]
m9avg=sum(m9)/lp
m9avg
m10=x1[,c(10,0)]
m10avg=sum(m10)/lp
m10avg
p1=x1[c(1,0),]
p1
p1avg=sum(p1)/lm
p1avg
p2=x1[c(2,0),]
p2avg=sum(p2)/lm
p2avg
p3=x1[c(3,0),]
p3avg=sum(p3)/lm
p3avg
p4=x1[c(4,0),]
p4avg=sum(p4)/lm
p4avg
p5=x1[c(5,0),]
p5avg=sum(p5)/lm
p5avg





#answer-3

  set.seed(1000)
score_P1=ceiling(runif(10,min=30,max=100))
score_P1

set.seed(1100)
score_P2 =ceiling(runif(10,min=30,max=100))
score_P2

set.seed(1100)
score_P3 =ceiling(runif(10,min=30,max=100))
score_P3

set.seed(1300)
score_P4 =ceiling(runif(10,min=30,max=100))
score_P4

set.seed(1400)
score_P5 = ceiling(runif(10,min=30,max=100))
score_P5

score =matrix(c(score_P1,score_P2,score_P3,score_P4,score_P5),nrow=5,ncol=10)
rownames(score)=c('p1','p2','p3','p4','p5')
colnames(score)=c('Match1','Match2','Match3','Match4','Match5',
                  'Match6','Match7','Match8','Match9','Match10')
score
rowMeans(score)
colMeans(score)

