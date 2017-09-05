#another technique to display graphs

data(mtcars)
mtcars
str(mtcars)
attach(mtcars)
par(fig=c(0,0.8,0,0.8)) #x-axis=0to0.8 and y-axis=0to0.8
par(mar=c(1,1,1,1))
par(bg="pink")
par(col.lab="blue")
plot(wt,mpg)
par(fig=c(0,0.8,0.65,1),new=T)
boxplot(wt,horizontal =T,axes=F )
par(fig=c(0.65,1,0,0.8),new=T)
boxplot(mpg,horizontal = F,axes=F)
