library(shiny)

# Define UI
ui <- fluidPage(
  titlePanel("My First Shiny App"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("number", 
                  "Choose a number:", 
                  min = 1,
                  max = 100,
                  value = 42)
    ),
    
    mainPanel(
      h3("You selected:"),
      textOutput("selected_number")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$selected_number <- renderText({
    paste("You chose the number", input$number)
  })
}

# Run the application 
shinyApp(ui = ui, server = server)