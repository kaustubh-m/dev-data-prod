library(shiny)

bmi <- function(ht, wt) wt / ((ht/100)*(ht/100))

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$height})
    output$inputValue2 <- renderPrint({input$weight})
    output$bmi <- renderPrint({bmi(input$height, input$weight)})
  }
)
  
  
  
  
  
