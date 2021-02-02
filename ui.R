library(shiny)
library(readxl)
library(dplyr)


shinyUI(navbarPage(
        title="Test",
        tabPanel(
            title="Data Upload and Review",
            
            wellPanel(
                fileInput(inputId = "file1", label = "Upload your file", accept=c('sheetName', 'header'), multiple=FALSE)
            ),
            
            dataTableOutput("data")
        ),
        
        
        tabPanel(
            title="2nd Tab"
        ),
        
        tabPanel(
            title="3rd Tab"
       )
))

