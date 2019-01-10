#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic 
shinyServer(function(input, output) {
  
  output$ui <- renderUI({
    if (is.null(input$input_type))
      return()
    
    switch(input$input_type,
           "VDOT" = numericInput("dynamic", "VDOT", value=40),
           "5k" = textInput("dynamic", "5k Time - (Format: 'HH:MM:SS')",
                            value="00:45:00"),
           "10k" = textInput("dynamic", "10k Time - (Format: 'HH:MM:SS')",
                             value="00:55:00"),
           "Half Marathon" = textInput("dynamic", "Half Marathon - (Format: 'HH:MM:SS')",
                                       value="01:45:00"),
           "Marathon" = textInput("dynamic", "Marathon - (Format: 'HH:MM:SS')",
                                  value="03:30:00")
    )
  })
  
  output$per_VO2_max <- observe(
    race_time <- 
  )
  
  ouput$vdot <- observe(
    if (is.null(input$input_type))
      return()
    if (is.null(input$dynamic))
      return()
    switch(input$input_type,
           "VDOT" = input$dynamic,
           "5k" = )
  )
  
  output$input_type_text <- renderText({
    input$input_type
  })
  
  output$dynamic_value <- renderPrint({
    str(input$dynamic)
  })

})
