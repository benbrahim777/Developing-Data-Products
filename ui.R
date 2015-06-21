library(shiny)
library(MASS)  # for the Animals dataset

shinyUI(pageWithSidebar(
  headerPanel('Dataset viewer '),
  sidebarPanel(
    selectInput("var", 
                label = "List of used dataset",
                choices = c("Animals", "EuStockMarkets","CO2"),                       
                selected = "Animals"),
    checkboxGroupInput('show_vars', 'Columns in Animmals dataset to show:', names(Animals),
                       selected = names(Animals)),
    helpText('For Animals dataset, we can select columns from above to show their contents 
             in tables on the right.
              We can sort the other dataset EuStockMarkets and CO2),and we can display many rows per page')    
    ),
  mainPanel(
    textOutput("text1"),
    tabsetPanel(
      tabPanel('Animals',
               dataTableOutput("mytableAnimals")),
      tabPanel('EuStockMarkets',
               dataTableOutput("mytableEuStockMarkets")),
      tabPanel('CO2',
               dataTableOutput("mytableCO2"))
    )
  )
    ))


