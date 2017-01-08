library("shiny")
function(input, output, session) { 
  
  output$plot1 <- renderPlot({ 
    plot(head(iris,input$irisnum)) 
  }) 
  # Generate an HTML table view of the data 
  output$table <- renderTable({ 
    data.frame(x=head(iris,input$irisnum)) 
  }) 
  
} 
