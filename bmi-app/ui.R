

library(shiny)


# ui.R

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index Calculation"),
    sidebarPanel(
      h4('BMI is a basic indicator of health, based on height & weight.'),
      h4('Its optimal range is 20.0 - 24.9'),
      numericInput('height', 'Height cm', 170, min = 50, max = 250, step = 1),
      numericInput('weight', 'Weight kg', 70, min = 30, max = 130, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('BMI calculation'),
      h4('You entered'),
      verbatimTextOutput("inputValue1"),
      verbatimTextOutput("inputValue2"),
      h4('which resulted in a BMI of '),
      verbatimTextOutput("bmi")
    )
  )
)
