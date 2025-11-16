library(RMySQL)
co <- dbConnect(MySQL(), user='piuser', password = 'Pass@123', dbname='piit', host='localhost')
co
df2 = dbGetQuery(co, 'select * from employees')
