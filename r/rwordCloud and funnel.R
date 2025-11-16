library(dplyr)

#rbind----
(df1 = data.frame(rollno = 1:5, name = paste('Student',1:5)))
(df2 = data.frame(rollno = 11:15, name = paste('Student',11:15)))

#cbind-----
(df3 = data.frame(rollno = 1:5, name = paste('Student',1:5)))
(df4 = data.frame(rollno = 1:5, gender = c('M','F','M','F','M')))

df34 = cbind(df3, df4)
df34

#join-----
df34B = merge(df3, df4, by='rollno')
df34B


# Word Cloud

#https://r-graph-gallery.com/196-the-wordcloud2-library.html
library(wordcloud2)
?head
dim(demoFreq)
head(demoFreq)
demoFreq %>% arrange(desc(freq)) %>% tail(3)
wordcloud2(data=demoFreq, size=1.6)
names(demoFreq)

wordcloud2(demoFreq, size = 0.7, shape = 'star')

df1 = data.frame(word = c('Mandal','Nayeema','Suroor','Kabir'), size=c(150, 40, 60, 30))
df1
wordcloud2(data = df1)

#ggwordcloud-----

#https://cran.r-project.org/web/packages/ggwordcloud/vignettes/ggwordcloud.html
library(ggwordcloud)
data("love_words")
head(love_words)

set.seed(42)
ggplot(love_words_small, aes(label = word)) +  geom_text_wordcloud() +  theme_minimal()


#Funnel Chart

#https://plotly.com/r/funnel-charts/

library(plotly)


fig <- plot_ly(  type = "funnelarea",   text = c("The 1st","The 2nd", "The 3rd", "The 4th", "The 5th"),
                 values = c(7, 4, 3, 2, 1))
fig


df2 = data.frame(y=c('Leads', 'Inquiries', 'Forms','Selection', 'FeePaid', 'Enrolment'), x=c(100, 80, 60, 40, 20,10))
df2
fig <- plot_ly()
fig <- fig %>% add_trace(type ='funnel', y=c('Leads', 'Inquiries', 'Forms','Selection', 'FeePaid', 'Enrolment'), x=c(100, 80, 60, 40, 20,10), marker = list(color = c('red','pink','brown', 'violet','orange','yellow'), line = list(width=1, color='red')))
fig <- fig %>% layout(yaxis = list(categoryarray= c('Leads', 'Inquiries', 'Forms','Selection', 'FeePaid', 'Enrolment')))
fig                         
