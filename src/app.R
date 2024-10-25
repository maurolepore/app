library(shiny)

ui <- fluidPage(
  private::greet() 
)

# Define server logic required to draw a histogram
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)

