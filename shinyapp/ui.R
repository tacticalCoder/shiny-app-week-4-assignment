#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI( navbarPage("Motor Trends Application",
                    tabPanel("Analysis",
                             fluidPage(
                               titlePanel("Analysis of miles per gallon (MPG) by Cylinders (CYL)"),
                               sidebarLayout(
                                 sidebarPanel(
                                   selectInput("variable", "Variable:",
                                               c("Number of cylinders" = "cyl",
                                                 "Displacement (cu.in.)" = "disp",
                                                 "Gross horsepower" = "hp",
                                                 "Rear axle ratio" = "drat",
                                                 "Weight (lb/1000)" = "wt",
                                                 "1/4 mile time" = "qsec",
                                                 "V/S" = "vs",
                                                 "Transmission" = "am",
                                                 "Number of forward gears" = "gear",
                                                 "Number of carburetors" = "carb"
                                               )),
                                   
                                   checkboxInput("outliers", "View outliers", FALSE)
                                 ),
                                 
                                 mainPanel(
                                   h3(textOutput("caption")),
                                   
                                   tabsetPanel(type = "tabs", 
                                               tabPanel("MPG Box Plot", plotOutput("mpgBoxPlot")),
                                               tabPanel("Regression model", 
                                                        plotOutput("mpgPlot"),
                                                        verbatimTextOutput("fit")
                                               )
                                   )
                                 )
                               )
                             )
                    ),
                    tabPanel("Data Set Information",
                             
                             h3("Regression Models"),
                             helpText("You work for Motor Trend, a magazine about the automobile industry Looking at a data set of a collection of cars, they are interested in exploring the relationship",
                                      "between a set of variables and miles per gallon (MPG) (outcome). They are particularly interested in the following two questions: Is an automatic or manual transmission better for MPG. Quantify the MPG difference between automatic and manual transmissions"),
                            
                             
                    ),
                    tabPanel("Data Set Details",
                             h2("Motor Trend Car Road Tests"),
                             hr(),
                             h3("Description"),
                             helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                                      " and comprises fuel consumption and 10 aspects of automobile design and performance",
                                      " for 32 automobiles (1973-74 models)."),
                             h3("Format"),
                             p("A data frame with 32 observations on 11 variables."),
                             
                             p("  [, 1]   mpg         Miles/(US) gallon"),
                             p("  [, 2]	 cyl	 Number of cylinders"),
                             p("  [, 3]	 disp	 Displacement (cu.in.)"),
                             p("  [, 4]	 hp	 Gross horsepower"),
                             p("  [, 5]	 drat	 Rear axle ratio"),
                             p("  [, 6]	 wt	 Weight (lb/1000)"),
                             p("  [, 7]	 qsec	 1/4 mile time"),
                             p("  [, 8]	 vs	 V/S"),
                             p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                             p("  [,10]	 gear	 Number of forward gears"),
                             p("  [,11]	 carb	 Number of carburetors"),
                             
                      
                    ),
                    tabPanel("Return to Git",
                             a("https://github.com/tacticalCoder/shiny-app-week-4-assignment"),
                             hr(),
                             h3("Thank You ! hope you liked the shiny app ! "),
             
                    )
)
)