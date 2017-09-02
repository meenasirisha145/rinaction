#importing data from excel
?read.csv
#read from CSV file
getwd()
#file.show()
df1=read.csv(file='./datatextfiles/dsstudents.csv')
df1
str(df1)#shows strings(character vectors) as factors
#to avoid strings as factors
df2=read.csv(file='./datatextfiles/dsstudents.csv',stringsAsFactors =F )
df2
str(df2)
head(df2)[1:4]
df2[3:4]
#to convert course and gender into factors
df2$course=factor(df2$course)
str(df2)
df2$gender=factor(df2$gender)
str(df2)
summary(df2)
table(df2$course,df2$gender)
df2[c('name','gender')]#to display name and gender
names(df2)#column names/attributes/variables
row.names(df2)#displays row names
df2$rollno
df2$rollno[df2$rollno==170113]=17013#to change the roll number
df2$rollno#after changing check the rollno column
df2$rollno[df2$name=='Lalit Sahni']=17013#another way to change the roll no
df2$name=='Lalit Sahni'
fix(df2)#edit data frame and save back
df2

