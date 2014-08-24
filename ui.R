shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Celsius to Fahrenheit Converter"),
    
    sidebarPanel(
      numericInput('celsius','Celsius degrees',0,min=-40,max=100,step=5),
      submitButton('Submit'),
      br(),
      img(src="usa.jpg", height = 100, width = 225)
    ),
    mainPanel(
      h3('Results of Conversion'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a temperature in Fahrenheit of '),
      verbatimTextOutput("conversion")
    )
  )
)
