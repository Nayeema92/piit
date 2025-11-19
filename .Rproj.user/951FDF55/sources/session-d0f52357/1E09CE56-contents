mtcars

str(mtcars)
summary(mtcars)
names(mtcars)
head(mtcars)
tail(mtcars)
is.na(mtcars)
sum(mtcars)
head(mtcars,10)

##analysis

mean(mtcars)

sapply(mtcars,mean)
mean(mtcars$mpg)
min(mtcars$mpg)
range(mtcars$mpg)
sd(mtcars$mpg)
quantile(mtcars$mpg)

##filter

sapply(mtcars[,c("mpg","hp","wt")],max)
sapply(mtcars[,c("mpg","hp","wt")],min)
mtcars[,c('mpg','hp')]
mtcars[1:5,c("mpg","hp")]

##library
library(dplyr)

mtcars%>% summary()
mtcars%>%mutate(newMPG=mpg*1.5)
mtcars%>%select(mpg,wt)
mtcars%>%select(mpg,wt)%>%head(6)
df=mtcars
df
df<-df%>%mutate((newMPG=mpg*1.5))
df
