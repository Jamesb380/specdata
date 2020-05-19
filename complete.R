library(plyr)
library(readr)




complete <- function(directory, id = 1:332){
        
        df_stat <- file.input2(directory, id)
}



setwd("/Users/james.bennett/Desktop/specdata")

####Load Input Handler
source("./Input_handler.R")

all.files <- 1:332
mi.dir <- "/Users/james.bennett/Desktop/specdata/data/specdata"

complete.stats <- complete(directory = mi.dir, id = all.files)
