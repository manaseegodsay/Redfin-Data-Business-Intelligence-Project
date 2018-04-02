source("extractor_agent.R")

shinyServer(function(input,output){
  #make the plots
  output$`Outstanding Property` <- renderPlot({
    outstanding.property.plot(unsold.data)
  })
  output$`New Property in Market` <- renderPlot({
    new.property.in.market(unsold.data)
  })
})
