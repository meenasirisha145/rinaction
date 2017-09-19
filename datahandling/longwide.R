#cast and melt
rollno=rep(c(10:13),4)
sname=rep(c('achal','apoorva','goldie','hitesh'),4)
examunit=rep(c('U1','U2','U3','U4'),each=4)
set.seed(1234)
(rpgm=ceiling(rnorm(4*4,60,10)))
set.seed(1234)
(sql=ceiling(rnorm(4*4,65,10)))
df1=data.frame(rollno,sname,examunit,rpgm,sql)
df1
#melt the data:wide to long (more rows)------
md=reshape::melt(df1,id=c('rollno','sname','examunit'))
head(md)
md
md[md$rollno==10,]
summary(md)

#casting without aggregation----- 
(reshape::cast(md,rollno+sname+examunit~variable))
(reshape::cast(md,rollno+variable~examunit))
(reshape::cast(md,rollno+sname+variable~examunit))
(reshape::cast(md,rollno+sname~variable~examunit))#unitwise marks of all students(list type)


#better way to do it------
md2=reshape::
