#Deliverable 1
library(tidyverse)
mecha_csv <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_csv) #generate multiple linear regression model
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=mecha_csv))
#Deliverable 2
suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), 
                                          SD = sd(PSI), .groups = 'keep')
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI),
                                                                        SD = sd(PSI) , .groups = 'keep')
#Deliverable 3
t.test(suspension$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension, Manufacturing_Lot=="Lot3")$PSI, mu=1500)