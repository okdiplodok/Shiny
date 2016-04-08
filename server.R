library(shiny)

lang <- read.table("http://hsequantling.wikispaces.com/file/view/all_words.csv", sep = ",", header = TRUE, encoding = 'UTF-8')


# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Filter data based on selections
  output$table <- DT::renderDataTable(DT::datatable({
    data <- lang
    if (input$lan != "All languages") {
      data <- data[data$language == input$lan,]
    }
    data
  }))
  
})
