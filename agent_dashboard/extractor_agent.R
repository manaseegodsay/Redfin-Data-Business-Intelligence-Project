library(lubridate)
library(ggplot2)

setwd("/Users/ruyyi/Documents/Gits/MIS584/Redfin-Data-Business-Intelligence-Project/")
#filepath <-  file.choose()
data <- read.csv(file = "nyc-rolling-sales-processed.csv")

#split the sold and unsold property due to the date format
sold.data = data[data$STATE == 'Sold',]
unsold.data = data[data$STATE == 'Pending',]

#fix the format of date
sold.data$SALE.DATE = strptime(sold.data$SALE.DATE,"%m/%d/%y %H:%M")

outstanding.property.plot <- function(data){
  ##ggplot2 code
}

total.commission.plot <- function(data){
  ##ggplot2 code
}

top5.agent.by.commision <- function(data){
  ##ggplot2 code
}

new.property.in.market <- function(data){
  ##ggplot2 code
}

sale.trend.by.region <- function(data){
  ##ggplot2 code
}