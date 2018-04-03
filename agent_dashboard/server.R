source("extractor_agent.R")

shinyServer(function(input,output){
  #make the plots
  output$`Outstanding Property` <- renderPlot({
    outstanding.property.plot(unsold.data)
  })
  output$`Top5 Agent By Commission` <- renderPlot({
    top5.agent.by.commision(sold.data)
  })
  output$`New Property in Market` <- renderDataTable({
    new.property.in.market(unsold.data)
  },options = list(pageLength = 10))
})
