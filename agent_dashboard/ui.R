library("shinythemes")
title = "REDFIN Agent Dashbboard"

shinyUI(fluidPage(
  theme = shinytheme("united"),
  navbarPage(title),
  mainPanel(
    #titlePanel(title,windowTitle = title),
    plotOutput("Outstanding Property")
  ),
  sidebarPanel(
    sliderInput(inputId = "bins",
                label = "Number of bins:",
                min = 1,
                max = 50,
                value = 30)
  )
))
