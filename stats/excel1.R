#moving data from excel to R
#input data from keyboard
x=scan()
x
mean(x)
y=scan()#error for character copying

?scan
y=scan(what='character')
y
median(x)
table(x)
sort(table(x))#ascending order
z=sort(table(x),decreasing=TRUE)#descending order
z=sort(table(x),dec=T)
z
names(z)
names(z)[1]

