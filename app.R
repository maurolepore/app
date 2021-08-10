library(shiny)

ui <- fluidPage(
  textInput("name", "Name?"),
  textOutput("greeting")

)

server <- function(input, output, session) {
  output$greeting <- renderText(paste("Hello", input$name))
}

shinyApp(ui, server)
