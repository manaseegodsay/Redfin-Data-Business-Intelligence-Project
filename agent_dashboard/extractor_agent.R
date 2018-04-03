library(lubridate)
library(ggplot2)
library(tweenr)
library(dplyr)
#library(gganimate)

setwd("/Users/ruyyi/Documents/Gits/MIS584/Redfin-Data-Business-Intelligence-Project/")
#filepath <-  file.choose()
data <- read.csv(file = "nyc-rolling-sales-processed.csv")


#split the sold and unsold property due to the date format
sold.data = data[data$STATE == 'Sold',]
unsold.data = data[data$STATE == 'Pending',]

#fix the format of date
sold.data$SALE.DATE = as.POSIXct(sold.data$SALE.DATE, format = "%m/%d/%y %H:%M")

outstanding.property.plot <- function(data){
  top10 = order(data[,"DAYS.IN.MARKET"],decreasing = T)[1:10]
  extract.data <- data[top10,]
  plot <- ggplot(extract.data,aes(x = reorder(extract.data$ADDRESS,extract.data$DAYS.IN.MARKET), y = extract.data$DAYS.IN.MARKET))
  plot + geom_bar(stat = 'identity')+coord_flip()
}

total.commission.plot <- function(data){
  ##ggplot2 code
}

top5.agent.by.commision <- function(data){
  extract.data = summarise(group_by(sold.data, AGENT.NAME), 
                           TOTAL.COMMISSION = sum(COMMISSION, na.rm = TRUE))
  plot <- ggplot(extract.data,aes(x = reorder(extract.data$AGENT.NAME,extract.data$TOTAL.COMMISSION), y = extract.data$TOTAL.COMMISSION))
  plot + geom_bar(stat = 'identity')+coord_flip()
  ##ggplot2 code
}

new.property.in.market <- function(data){
  ##add the interaction: change the days in market
  extract.data <- data[data$DAYS.IN.MARKET <= 15,]
  extract.data <- extract.data[,c('NEIGHBORHOOD','BUILDING.CLASS.CATEGORY','ADDRESS','ZIP.CODE')]
  ##ggplot2 code
}

sale.trend.by.region <- function(data){
  ##ggplot2 code
}



