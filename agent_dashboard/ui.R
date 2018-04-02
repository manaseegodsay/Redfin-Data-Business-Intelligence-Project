shinyUI(fluidPage(
  verticalLayout(
    titlePanel("REDFIN Agent Dashbboard"),
    plotOutput("timeseries"),
    plotOutput("boxplot")
  )  
))