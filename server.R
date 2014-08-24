FahrenheitConverter <- function(celsius) (celsius*9/5)+32

shinyServer(
  function(input, output){
    output$inputValue <- renderPrint({input$celsius})
    output$conversion <- renderPrint({FahrenheitConverter(input$celsius)})
  }
)
