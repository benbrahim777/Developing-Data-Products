library(shiny)


shinyServer(function(input, output) {
  output$mydatasetvar <- renderUI({ 
    selectInput("mydataset", "Dataset:",
                c("Animals" = "Animals",
                  "EuStockMarkets" = "EuStockMarkets",
                  "CO2" = "CO2"))
  })
  
  
  # a large table, reative to input$show_vars
  output$mytableAnimals = renderDataTable({
    library(MASS)
    Animals[, input$show_vars, drop = FALSE]
  }, options = list(bSortClasses = TRUE))
  
  # sorted columns are colored now because CSS are attached to them
  output$mytableEuStockMarkets = renderDataTable({
    EuStockMarkets
  }, options = list(bSortClasses = TRUE))
  
  # customize the length drop-down menu; display 5 rows per page by default
  output$mytableCO2 = renderDataTable({
    CO2
  }, options = list(aLengthMenu = c(15, 45, 199), iDisplayLength = 45))
  
})

