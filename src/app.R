library(shiny)

# Installing private packages here because GITHUB_PAT isnt' discovered
# when installing in setup.R or Dockerfile. I don't know why.
pak::pak("maurolepore/private")

ui <- fluidPage(
  private::greet()
)

# Define server logic required to draw a histogram
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)

