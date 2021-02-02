library(shiny)
library(readxl)
library(dplyr)
library(data.table)

shinyServer(function(input, output) {
    
    dataset = reactive({
        
        infile = input$file1  
        
        
        if (is.null(infile))
            return(NULL)

        infile_read = read_xlsx(infile$datapath, sheet = 1)
        return(infile_read)
    })
    
    output$data<-renderDataTable({
        as.data.table(head(dataset()[,1:30]))
    })
    
})
   
