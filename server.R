#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

weat <- read_excel("C:/Users/luis_/OneDrive/Escritorio/cjs_data.xlsx")

function(input, output, session) { 
  
  output$alv <- renderPlot({ 
    
    serie2 <- ts(weat[, input$temp], start = 1, end = 21, frequency = 1)
    
    plot(serie2, col = "blue",main = input$temp,xlab = "Day",ylab = input$temp,)

    output$text <- renderPrint({mean(serie2)})
   
  })
}