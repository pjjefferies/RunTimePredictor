# run the application by clicking 'Run App' above.
#

library(shiny)

# Define UI for application that calculates predicted race times based on variable inputs
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Run Time Predictor - Based on Jack Daniels' VDOT Tables"),
  
  # Sidebar with drop-down menu for choosing input and text output of
  # other times
  sidebarLayout(
    sidebarPanel(
      selectInput("input_type", label = h3("Choose Input Type"), 
                  choices = list("VDOT" = "VDOT", "5k Time" = "5k", "10k Time" = "10k",
                                 "Half Marathon Time" = "Half Marathon", "Marathon Time" = "Marathon"), 
                  selected = "VDOT", multiple = FALSE),
      
      #hr(),
      uiOutput("ui")
      
    ),
    
    # Show a plot of the race time predictions
    mainPanel(
      textOutput("This is text one"),
      verbatimTextOutput("dynamic_value")
      # plotOutput("distPlot")
    )
  )
))
