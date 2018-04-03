# server.R

source("helpers.R")
counties <- readRDS("data/counties.rds")
library(maps)
library(mapproj)

shinyServer
(
  function(input, output) 
  {
    output$map <- renderPlot({percent_map(switch (input$var,"Percent White" = counties$white, "Percent Black" = counties$black, "Percent Asian" = counties$asian, "Percent Hispanic" = counties$hispanic), "blue", input$var, input$range[1], input$range[2] )})
  }
)
    
