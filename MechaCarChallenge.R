library(dplyr)

dataMC<- read.csv('MechaCar_mpg.csv')
lmMC<- lm(mpg~.,dataMC)
summary(lmMC)


