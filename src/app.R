library(shiny)

ui <- fluidPage(
  # private::greet()
  paste(
    "APPTEST:", Sys.getenv("APPTEST"),
    "TESTAPP:", Sys.getenv("TESTAPP")
  )	
)

# Define server logic required to draw a histogram
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)

