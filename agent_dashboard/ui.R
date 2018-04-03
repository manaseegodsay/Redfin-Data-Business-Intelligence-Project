library("shinythemes")
title = "REDFIN(NewYork) Agent Dashbboard"

shinyUI(fluidPage(
  theme = shinytheme("united"),
  navbarPage(title),
  mainPanel(
    #titlePanel(title,windowTitle = title),
    plotOutput("Outstanding Property"),
    plotOutput("Top5 Agent By Commission"),
    dataTableOutput("New Property in Market")
  )
  #sidebarPanel(sliderInput(inputId = "bins", label = "Number of bins:", min = 1, max = 50, value = 30))
))
