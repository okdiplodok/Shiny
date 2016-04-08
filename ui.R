library(shiny)

lang <- read.table("http://hsequantling.wikispaces.com/file/view/all_words.csv", sep = ",", header = TRUE, encoding = 'UTF-8')

# Define the overall UI
shinyUI(
  fluidPage(
    titlePanel("One thousand Most Frequently Used Words"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(4,
             selectInput("lan",
                         "Choose language:",
                         c("All languages",
                           unique(as.character(lang$language))))
      )
    ),
    # Create a new row for the table.
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)
