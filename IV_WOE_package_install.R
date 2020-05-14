library(devtools)
install_github('tomasgreif/woe/tree/master/R',force = TRUE)
library(woe)
devtools::install_github("selva86/InformationValue")

iv.mult(home_cred,"TARGET",summary=TRUE, verbose=TRUE)

iv.mult(home_cred,"TARGET",summary=TRUE, verbose=TRUE)

home_cred1 <- read.csv('Merged_data.csv')
View(home_cred1)
library(InformationValue)
install.packages('Information')
library(Information)

var <- 1:ncol(home_cred1)

for (i in var){
  
  #First checking the unique values in a column
  #If it is less than 10, then convert that variable into categorical
  if (length(unique(home_cred1[,i]))<10){
    home_cred1[,i] <- as.factor(home_cred1[,i])
  }
}

IV <- create_infotables(data=home_cred1,y='TARGET',bins = 10)
