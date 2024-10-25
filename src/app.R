library(shiny)

ui <- fluidPage(
  paste("Output: '", Sys.getenv("APPTEST"), "'") 
)

# Define server logic required to draw a histogram
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)

