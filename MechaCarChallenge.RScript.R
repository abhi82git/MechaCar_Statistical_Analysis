# Use library() function to load the dplyr package
library(dplyr)
library(tidyverse)

# Import and read MechaCar_mpg.csv
mecha_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg_df)

# Summary Function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg_df))

# Import and read Suspension_Coil.csv
mecha_coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

# Create total_summary DF
total_summary <- mecha_coil_df %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI), .groups = 'keep') 


# Create lot_summary_df
lot_summary_df <- mecha_coil_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                               Median=median(PSI),
                                                                               Variance=var(PSI),
                                                                               SD=sd(PSI), .groups = 'keep') 


# T-Tests on Suspension Coils
# If the PSI across all manufacturing lots is statistically different from the population mean of 1,500 ppsi
t.test(mecha_coil_df$PSI,mu=1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 ppsi
lot1 <- subset(mecha_coil_df, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil_df, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil_df, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)