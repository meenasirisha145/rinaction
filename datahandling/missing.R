#missing values
df=read.csv(file=file.choose())
df
str(df)
summary(df)
is.na(df)
anyNA(df)
table(is.na(df))
all(is.na(df))
all(is.na(df)==F)
all(is.na(df)==T)
all(is.na(df)==F&is.na(df)==T)
complete.cases(df)#rows that are incomplete
!complete.cases(df)
df
sum(complete.cases(df))#no of rows that are complete
sum(!complete.cases(df))

df[complete.cases(df),1:2]
df[!complete.cases(df),1:2]
mean(df$excel)
mean(df$excel,na.rm = T)
mean(df$excel,na.rm = T,trim=.2)#it will ignore 20% of values on either side
mean(df$excel,na.rm = T,trim=.4)#it will ignore 40% of values on either side
cat(df$excel,trim=.2)


df$excel
na.omit(df$excel)
na.omit(df)[1:2]#gives the complete cases

colSums(is.na(df))#no of na values in each column

apply(df,2,function(x) sum(is.na(x)))#no of na values in each column
apply(is.na(df),2,sum)
addmargins(is.na(df),1,sum)
length(which(is.na(df['excel']==T)))

sum(is.na(df$excel))
mean(df$excel,na.rm=T)
df$excel
df$excel[is.na(df$excel)]
df$excel[is.na(df$excel)]=mean(df$excel,na.rm=T)
df$excel

df$sql
max(df$stats,na.rm=T)
df$sql[is.na(df$sql)]=max(df$stats,na.rm=T)
df$sql
df$fees
df$fees[is.na(df$fees)]
na_count=sapply(df,function(y) sum(length(which(is.na(y)))))
(na_count=data.frame(na_count))
