#importing the data
getwd()
df1=read.csv(file=file.choose())
df1
head(df1[,1:2])
str(df1)


df2=read.csv(file=file.choose(),row.names = 1)
head(df2[,1:2])
df2=read.csv(file=file.choose(),row.names = 2)
head(df2[,1:2])


df2=read.csv(file='./datatextfiles/dsstudents1.csv',row.names = c(paste0('R',1:11)))
head(df2[,1:2])

head(df2[,1:2])
df2$rollno2=row.names(df2)
df2[,c('rollno2')]
str(df2)

df2=read.csv(file='./datatextfiles/dsstudents1.csv',stringsAsFactors = F)
df2
str(df2)
head(df2)[1:4]

