#margin
party=c("bjp","congress","sp","aap")
length(party)
states=c("up","delhi","haryana","punjab","uk")
length(states)
set.seed(1234)
mp=ceiling(runif(20,25,50))
#df=data.frame(party,states,mp)
col1=rep(party,each=5)#to repeat each value in the vector 5 times
length(col1)
col2=rep(states,times=4)#to repeat vector 4 times
length(col2)
cbind(col1,col2)
party1=factor(col1)
state1=factor(col2)
df=data.frame(party1,state1,mp)
df
table(df)#not relevant here
ftable(df)#frequency table
str(col1)
#tabulate(col1)
table(df$party1)
table(df$state1)
table(df[,c('party1','state1')])
table(df[,c('party1','state1')],dnn=list('Political parties','States of India'))
xtabs(mp~party1+state1,data=df) #formula method  row-party and col-state
xtabs(mp~state1+party1,data=df)#formla method row-state and col-party
statesel= c('up','delhi')#vector of states up and delhi
statesel
xtabs(mp~state1+party1,data=df,subset=state1 %in% statesel)#selecting of particular states
xtabs(mp~party1+state1,data=df,subset=state1 %in% statesel)
xtabs(mp~party1+state1,data=df,subset=state1 %in% statesel,drop.unused.levels = T)
partysel=c('bjp','aap')
xtabs(mp~party1+state1,data=df,subset=party1 %in% partysel)
xtabs(mp~party1+state1,data=df,subset=party1 %in% partysel,drop.unused.levels = T)
xtabs(mp~party1+state1,data=df,subset=party1 %in% partysel&state1 %in% statesel,drop.unused.levels = T)
ftable(df)#where they fought and won
ftable(df$state1,df$party1,df$mp)#change order
#margins----
matresults=xtabs(mp~party1+state1,data=df)
matresults
?margin.table#used for arrays
str(matresults)
margin.table(matresults,margin=NULL)#total mps
margin.table(matresults,margin=1)#total mps in party rows
margin.table(matresults,margin=2)#total mps in state columns
addmargins(matresults,1,sum)#total mps in state cols
addmargins(matresults,2,sum)#total mps in party rows

#if matresults was an array:dimension=3
margin.table(matresults,margin = 3)#error here

#Prop table-----
prop.table(matresults,margin=NULL)#proportion of total
round(prop.table(matresults,margin = NULL),2)
sum(round(prop.table(matresults,margin = NULL),2))#total proportion



p1=round(prop.table(matresults,margin = 1),2)
p1
rowSums(p1)
addmargins(p1,2,sum)

p2=round(prop.table(matresults,margin = 2),2)
p2
colSums(p2)
addmargins(p1,1,sum)

barplot(matresults)
qqplot(df$party1,df$state1)


