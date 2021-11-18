library(dplyr)

dataMC<- read.csv('MechaCar_mpg.csv')
lmMC<- lm(mpg~.,dataMC)
summary(lmMC)


dataSC<- read.csv('Suspension_Coil.csv')
attach(dataSC)
total_summary<- summarize(dataSC, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary<- dataSC %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))