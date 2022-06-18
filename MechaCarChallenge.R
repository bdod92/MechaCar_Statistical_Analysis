#include dplyr library
library(dplyr)

#create mpg DF
mechaCarMPGDF <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
#generate linear model AND summary of linear model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMPGDF))

#create a suspension DF
mechaCarSusDF <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
#generate statistics for PSI
total_summary <- mechaCarSusDF%>% summarize(Mean = mean(mechaCarSusDF$PSI), Median = median(mechaCarSusDF$PSI), Variance = var(mechaCarSusDF$PSI), SD = sd(mechaCarSusDF$PSI), .groups = 'keep')
#create a lot summary 
lot_summary <- mechaCarSusDF %>% group_by(Manufacturing_Lot) %>%summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# T-test on suspension coils
# Testing to see if Lot1 Coil PSI is significantly different than all lots. (It is not, reject the null hypothesis)
t.test(subset(mechaCarSusDF, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
# Testing to see if Lot2 Coil PSI is significantly different than all lots. (It is not, reject the null hypothesis)
t.test(subset(mechaCarSusDF, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
# Testing to see if Lot3 Coil PSI is significantly different than all lots. (It is, fail to reject the null hypothesis)
t.test(subset(mechaCarSusDF, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)

