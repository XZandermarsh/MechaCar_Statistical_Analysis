# Import dplyr library
library(dplyr) 

# Import mpg data from csv file
mpg_data <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) 

# Perform Linear Regression on each column related to mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)

# Statistical Summary of LR
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data))
