# Author :comaple.zhang
# Create Time : 20150326
# Usage : example to create wordCloud
# install the r packages for the cloud
install.packages('RColorBrewer')
install.packages('wordcloud')

# add dependent library to u workplace

library(RColorBrewer)
library(wordcloud)

# set workdir 
setwd('/data/)

# read the data from disk
data=read.csv("/data/words.txt",sep=':')

# read the columns of dataframe 
names(data)

# set colors
colors=c('red','blue','green','maroon','brown','navy','purple','black')

# generate the word cloud 
wordcloud(data$word,data$freq,scale=c(6,1),min.freq=0,max.words=100,colors=colors,random.order=F,random.color=T,ordered.colors=F,family='STKaiti')

