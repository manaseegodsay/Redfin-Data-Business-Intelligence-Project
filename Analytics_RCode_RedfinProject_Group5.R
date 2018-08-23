#loading the data

training.data.raw <- read.csv('nyc-rolling-sales-processed.csv',header=T,na.strings=c(""))

#basic analysis
sapply(training.data.raw,function(x) sum(is.na(x)))
sapply(training.data.raw, function(x) length(unique(x)))

library(Amelia)
missmap(training.data.raw, main = "Missing values vs observed")

data <- subset(training.data.raw,select=c(2,3,6,7,10,12,20,21,22,23,24,25,26))

is.factor(data$AGENT.NAME)
is.factor(data$STATE)
is.factor(data$ZIP.CODE)

#splitting into training and testing data
train<-data[1:100,]
test<-data[42275:84548,]

#logistic regression tried,but data is highly non-linear

model <- glm(STATE ~ ZIP.CODE + LOT + SALE.PRICE,family=binomial(link='logit'),data=train)

glm.fit= glm(State)
summary(model)

#decison trees
library(tree)

#Agent name with sale price
tree.dat <- tree(AGENT.NAME ~ SALE.PRICE + ZIP.CODE, data = train)
summary(tree.dat)

plot(tree.dat)
text(tree.dat, pretty = 0)

#Agent name with zip code
tree.dat <- tree(AGENT.NAME ~ ZIP.CODE, data = train)
summary(tree.dat)

plot(tree.dat)
text(tree.dat, pretty = 0)

