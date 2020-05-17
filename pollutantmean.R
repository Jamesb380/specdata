library(plyr)
library(readr)




pollutantmean <- function(directory, pollutant, id = 1:332){ 
        df_extract <- file.inputl(directory, id)
        
        pollutant.mean <- mean(df_extract[[pollutant]],na.rm = T) 
        
}

setwd("/Users/james.bennett/Desktop/specdata")

####Load Input Handler
source("./Input_handler.R")

### Define function arguments ###

mi.dir <- "/Users/james.bennett/Desktop/specdata/data/specdata"
mi.id <- 15:40
el.pollutant <- "sulfate"


####################################

mean.pollutant <- pollutantmean(directory = mi.dir,pollutant = el.pollutant, id = mi.id)
