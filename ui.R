# shinyUI(pageWithSidebar(
#   
#   headerPanel("Developing Data Products - Course Project"),
#   sidebarPanel(
#     h5("Italian historic population surveys - population by age (1881-2011)"),
#     
#     p("Years 1891 and 1941 aren't available"),
#     
#     p("Please select the year you are interested"),
# 
#     sliderInput('YYYY', 'Year', value = 1881, min = 1881, max = 2011, step = 10,)
#   ),
#   mainPanel(
#     h4("The graph show the distribution of the people by Age and sex"),
#     plotOutput('newGraph')
#   )
# ))

shinyUI(fluidPage(
  title ="Developing Data Products - Course Project",
  h4("Italian historic population surveys - population by age (1881-2011)"),
  p("From http://dati.comune.milano.it/dato/item/300-300%20-%20Popolazione:%20censimenti%20storici%20-%20popolazione%20per%20et%C3%A0%20(1881-2011).html"),
  h5("The graph show the distribution of the Italian people by Age and Sex for the selected Year"),
    plotOutput('newGraph'),
  hr(),

  fluidRow(
   # column(3,
    
    p("Years 1891 and 1941 aren't available"),
    
    p("Please select the year you are interested"),
    
    sliderInput('YYYY', 'Year', value = 1881, min = 1881, max = 2011, step = 10,)
    #)
  )
))