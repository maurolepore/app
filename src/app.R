library(shiny)

install.packages("remotes")
remotes::install_github("maurolepore/private", auth_token = Sys.getenv("GITHUB_PAT"))

ui <- fluidPage(
  private::greet()
)

# Define server logic required to draw a histogram
server <- function(input, output) {
}

# Run the application
shinyApp(ui = ui, server = server)

