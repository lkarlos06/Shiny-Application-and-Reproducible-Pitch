#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library(readxl)

weat <- read_excel("C:/Users/luis_/OneDrive/Escritorio/cjs_data.xlsx")
fluidPage(     
  
  titlePanel("Weather of Ciudad Juarez, Mexico From Octuber 1,2022 to Octuber 21,2022"), 
  
  sidebarLayout(       
    
    sidebarPanel(p(strong("Source:",style="color:red"), a("Meteored",href="https://tinyurl.com/3e2c7scv")), 
                 selectInput("temp", "Change Weather Variable:",  
                             choices=colnames(weat[-1]))
    ), 
    
    mainPanel( 
      plotOutput("alv")   
    )
    
  ) 
) 

