# Import dplyr library
library(dplyr) 

# Import mpg data from csv file
mpg_data <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) 

# Perform Linear Regression on each column related to mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)

# Statistical Summary of LR
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data))

# Import suspension coil data from csv file
coil_data <- read.csv('Suspension_Coil.csv', stringsAsFactors = F)

# Summarize overall statistics of coil PSI
total_summary <- coil_data %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), variance_PSI=var(PSI), sd_PSI=sd(PSI), .groups = 'keep')

# Summarize lot statistics of coil PSI
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), variance_PSI=var(PSI), sd_PSI=sd(PSI), .groups = 'keep')

# One sample t-test to see if overall PSI is statistically different from assumed population mean of 1500 PSI
t.test(coil_data$PSI, mu=1500)

# Create new dataframes for each mfg lot to compare in t-test
coil_lot1 <- coil_data %>% filter(Manufacturing_Lot=='Lot1')
coil_lot2 <- coil_data %>% filter(Manufacturing_Lot=='Lot2')
coil_lot3 <- coil_data %>% filter(Manufacturing_Lot=='Lot3')

# Perform t-tests on each lot to see if there is a statistical variance from assumed population mean of 1500 PSI
t.test(coil_lot1$PSI, mu=1500)
t.test(coil_lot2$PSI, mu=1500)
t.test(coil_lot3$PSI, mu=1500)

