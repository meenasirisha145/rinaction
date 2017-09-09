mtcars
str(mtcars)
hist(mtcars$qsec)
par()

par(pin=c(2,3))
par(col.lab='red')
opar=par(no.readonly = T)#listing of parameters that can be changed
opar
par(opar)            #reset to default
hist(mtcars$qsec)



par('mar')
par('mai')
hist(mtcars$qsec)
par(mar=c(1,1,1,1))
par('mar')
attach(mtcars)
hist(qsec)
par(bg="green")
par(fg="blue")
par(col.main="red")
hist(qsec)
barplot(qsec)
pie(qsec)
par(mfrow=c(2,2))   #multiple frames per row,order is row wise
par(mfcol=c(2,2))   #multiple frames per column,order is column wise
hist(qsec,main='1')
hist(cyl,main='2')
hist(hp,main='3')
hist(gear,main='4')
pie(qsec,main='1')
pie(cyl,main='2')
pie(hp,main='3')
pie(gear,main='4')
#str(mtcars)
layout(matrix(c(1,1,2,3),byrow=T,nrow=2))
hist(qsec,main='1')
hist(cyl,main='2')
hist(hp,main='3')
#2by3 matrix
layout(matrix(c(1,1,1,2,3,4),byrow=T,nrow=2))
hist(qsec,main='1')
hist(cyl,main='2')
hist(hp,main='3')
hist(gear,main='4')
#2by3 matrix
layout(matrix(c(2,3,4,1,1,1),byrow=T,nrow=2))
hist(qsec,main='1')
hist(cyl,main='2')
hist(hp,main='3')
hist(gear,main='4')
#3by2 matrix
layout(matrix(c(1,2,3,3,4,5),byrow=T,nrow=3))
hist(qsec,main='1')
hist(cyl,main='2')
hist(hp,main='3')
hist(gear,main='4')
hist(vs,main='5')
#3by2 matrix with width and height hor=3:1,vertical=1:2
layout(matrix(c(1,2,3,4),byrow=T,nrow=2),widths=c(3,1),heights=c(1,2))
hist(qsec,main='1')
hist(cyl,main='2')
hist(hp,main='3')
hist(gear,main='4')

