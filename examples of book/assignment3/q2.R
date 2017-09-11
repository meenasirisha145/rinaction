
#question:2
attendance=sample(c('A','P'),size = 30,replace = TRUE,prob = c(0.3,0.7))
attendance

attendance_data=data.frame(sample(c('A','P'),size = 30,replace = TRUE,prob = c(0.3,0.7)))
attendance_data
length(attendance_data$P)
