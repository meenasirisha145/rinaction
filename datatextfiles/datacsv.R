#importing data from excel
?read.csv
#read from CSV file
getwd()
#file.show()
df1=read.csv(file='./datatextfiles/dsstudents1.csv')#importing csv file
#df1a=read.csv(file=file.choose())#to search on realtime basis
#df1a
#df1b=read.csv(file='./datatextfiles/dsstudents1.csv',stringsAsFactors =F )#to convert strings into characters
#df1b
#str(df1b)
df1
str(df1)
names(df1)
#start from here
colcls=c('numeric',NA,'factor','factor','logical','character','numeric','character','character','character',rep('numeric',4))
colcls
df2=read.csv(file='./datatextfiles/dsstudents1.csv',colClasses = colcls,as.is = T)#as it is name
str(df2)


#date column------------
as.Date('1967-20-15')#wrong
as.Date('1967-10-15')#right default %y-%b-%d :learn this
?as.Date
as.Date('05-Oct-1967',format="%d-%b-%Y")#correct
as.Date('05-Oct-67',format="%d-%b-%y")#this is also correct#(00 to 68 prefixed by 20)
as.Date('05-Oct-85',format="%d-%b-%y") #(69 to 99 prefixed by 19) 
as.Date('05-Oct-85',format="%d-%b-%Y")
str(df2$dob)
#now convert the date column
head(df2$dob)#1-Sep-96:d-b-y
(df2$dob=as.Date(df2$dob,format="%d-%b-%y"))
str(df2$dob)
#add another column-----calculate age
#days=Sys.Date()-df2$dob #days -> age :numeric values -days:diff in weeks
#age1=days/365
#age1
difftime(Sys.Date(),df2$dob,unit='weeks')
(df2$age=ceiling(as.numeric(difftime(Sys.Date(),df2$dob,unit='weeks'))/52.5))
head(df2$age)
str(df2)
summary(df2)


#save data
write.csv(x=df2,file='./datatextfiles/meena.csv')#save to csv
#you can save to other formats using other tools/options
?write.csv
#save the data without loosing the properties
saveRDS(object=df2,file='./datatextfiles/meena1.RDS')#only 1 object at a time

markstotal = runif(11,50,150)
markstotal
save(markstotal,df2,file='./datatextfiles/meena2.RData') #multiple objects at a time
save.image(file='./datatextfiles/meena3.RData')#save all current objects/multiple objects
save.image()#saves to default RData


#load objects from saved locations
#from csv
#from RDS
#from RData
readRDS(file='./datatextfiles/meena1.RDS')#loads and prints
mydata=readRDS(file='./datatextfiles/meena1.RDS')
mydata
#load()#for data in .RData this happens automatically
load(file='./datatextfiles/meena2.RData')
load(file='./datatextfiles/meena3.RData')
ls()

#filter
df2$age>30#by age
df2[df2$age>30,][1:2]
df2[df2$age>30,c(1,3,5,7)]


#filter----by course and gender
df2[df2$gender=='M'& df2$course=='PGDDS',][1:5]
df2[df2$gender=='M'& df2$course=='PGDDS',c('rollno','name')]
colnames(df2)
rownames(df2)

#find from indices----
df2[df2$hostel==T,c(1,2)]#stay in hostel
df2[,c('rollno','hostel')]
which(df2$hostel==T)#using which command tells indices
df2[which(df2$hostel==T)] #,c(1,2,4,5)]#stays in hostel
df2[which(!df2$hostel==T),c(1,2,4,5)]#not in hostel


