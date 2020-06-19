library(plyr)
library(readr)


pollutantmean <- function(directory, pollutant, id = 1:332){
       
         setwd("/Users/james.bennett/Desktop/specdata")
               
        source("./Input_handler.R")
        df_extract <- file.inputl(directory, id)
        pollutant.mean <- mean(df_extract[[pollutant]],na.rm = T) 
        pollutant.mean
}



