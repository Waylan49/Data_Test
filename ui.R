library(shiny)
library(readxl)
library(dplyr)

shinyUI(fluidPage(
    titlePanel("Qspeak Test"),
    
    sidebarLayout(
        sidebarPanel(
           fileInput(inputId = "file1", label = "Upload your file", accept=c('sheetName', 'header'), multiple=FALSE)
        ),
        mainPanel(
            dataTableOutput("data")
        ),
    )
))

