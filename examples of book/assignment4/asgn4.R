#ASSIGNMENT-4
df3=read.csv(file=file.choose())#reading the file into r
df3
str(df3)
df3=read.csv(file=file.choose(),stringsAsFactors = F)
df3
str(df3)
summary(df3)
class(df3)
nrow(df3)#no of rows
is.na(df3)
anyNA(df3)
table(is.na(df3))#finding no of na values
df3$dob=as.Date(df3$dob,format="%d-%b-%y")
class(df3$dob)
str(df3)
#creating an age column----
difftime(Sys.Date(),df3$dob,unit='weeks')
(df3$age=ceiling(as.numeric(difftime(Sys.Date(),df3$dob,unit='weeks'))/52.5))
df3$age
str(df3)
summary(df3)
#checking for complete cases----
complete.cases(df3)
df3[complete.cases(df3),]
df3[complete.cases(df3),1:2]
df3[!complete.cases(df3),1:2]
colSums(is.na(df3))#no of na values in each column
#replacing NA values in excel column with mean values
sum(is.na(df3$excel))
round(mean(df3$excel,na.rm=T))
df3$excel
df3$excel[is.na(df3$excel)]
df3$excel[is.na(df3$excel)]=round(mean(df3$excel,na.rm=T))
df3$excel
#replacing NA Values in sql column with mean-----
sum(is.na(df3$sql))
mean(df3$sql,na.rm=T)
df3$sql
df3$sql[is.na(df3$sql)]
df3$sql[is.na(df3$sql)]=mean(df3$sql,na.rm=T)
df3$sql
#replacing NA Values in fees column with median
sum(is.na(df3$fees))
median(df3$fees,na.rm=T)
df3$fees
df3$fees[is.na(df3$fees)]
df3$fees[is.na(df3$fees)]=mean(df3$fees,na.rm=T)
df3$fees
#replacing NA values in hostel column
sum(is.na(df3$hostel))
median(df3$hostel,na.rm=T)
df3$hostel
df3$hostel[is.na(df3$hostel)]=median(df3$hostel,na.rm=T)
df3$hostel
colnames(df3)
#adding a row
df=data.frame(17000, "Ramesh Singh", "MSC", NA ,"True", "1994-10-17", 50000, "ramesh@gmail.com",NA , "Delhi",NA ,NA ,NA ,NA,NA)

names(df)=c ("rollno","name" ,  "course" ,"gender" ,"hostel", "dob" ,   "fees",   "email",  "mobno" , "city",  
          "rpgm" ,  "excel"  ,"sql"   , "stats"  ,"age")
df4=rbind(df3,df)
df4
is.na(df4)
sum(is.na(df4))
colSums(is.na(df4))

#replacing Na values-----
df4$rpgm
mean(df4$rpgm,na.rm=T)
df4$rpgm[is.na(df4$rpgm)]=round(mean(df4$rpgm,na.rm=T))
df4$rpgm
round(mean(df4$excel,na.rm=T))
df4$excel[is.na(df4$excel)]=round(mean(df4$excel,na.rm=T))
df4$excel
df4$sql[is.na(df4$sql)]=round(mean(df4$sql,na.rm=T))
df4$sql
df4$stats[is.na(df4$stats)]=round(mean(df4$stats,na.rm=T))
df4$stats
#replacing NA values in age-------
difftime(Sys.Date(),df4$dob,unit='weeks')
df4$age=ceiling(as.numeric(difftime(Sys.Date(),df4$dob,unit='weeks'))/52.5)
df4$age
df4$gender[is.na(df4$gender)]="M"
df4$gender




##creating another dataframe----
df5=array(df4[c("rollno","rpgm","sql","excel","stats")])
names(df5)=c("rollno","rpgm","sql","excel","stats")
df5
dimnames(df5)
