df2=readRDS(file='./datatextfiles/meena1.RDS')
df2
sort(df2$age)
sort(-df2$age)#wrong way of doing
order(df2$age)
df2$name[order(df2$age)]#order by age and displays names
df2$name[c(5,1,2)]
df2$name[order(-df2$age)]
df2$name[rev(order(df2$age))]
df2[order(df2$age[c(4,8,5,1)]),c('name','age')]
df2[order(df2$hostel,df2$age),c('name','age','hostel')]#hostel and age
df2[order(df2$hostel,-df2$age),c('name','age','hostel')]#hostel and rev age
df2[order(df2$age,c(4,8,5,1)),c('name','age')]

