library("shiny")
pageWithSidebar( 
  headerPanel('Iris dataset'), 
  sidebarPanel( 
    numericInput('irisnum', 'sample to show', 10, 
                 min = 1, max = 150) 
  ), 
  mainPanel( 
    tabPanel("Table", tableOutput("table")), 
    plotOutput('plot1') 
  ) 
) 
