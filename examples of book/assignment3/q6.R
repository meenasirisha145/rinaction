#question6
students=c("S1", "S2", "S3", "S4", "S5")
gender=c("M", "F", "M", "M", "F")
age   =c(23, 22, 21, 25, 22)
city  =c("Delhi", "Noida", "Lucknow", "Delhi", "Noida")
cat   =c("Gen", "OBC", "Gen", "SCST", "Gen")
df=data.frame(students,gender,age,city,cat)
df
df$students
length(df$students) 
length(df$gender)
newstudent=c(paste("student",1:5,"") )
newstudent
df$students=newstudent
df
table(df$cat)
table(df$gender)
table(df$cat,df$gender)
