#question3
p=c("p1","p2","p3","p4","p5")
m=c("m1","m2","m3","m4","m5","m6","m7","m8","m9","m10")
set.seed(1300)
x=ceiling(runif(5*10,30,100))
x
x1=matrix(x,nrow=5,dimnames=list(p,m))
x1
rowMeans(x1)
colMeans(x1)





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

