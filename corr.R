
library(plyr)
library(readr)

#setwd("/Users/james.bennett/Desktop/specdata")

####Load Input Handler
source("./complete.R")

corr <- function(directory, threshold = 0){
       
        load <- complete(directory) 
        id <- which(load$freq >= threshold)
        df_extract <- file.inputl(directory, id)
    #    df_extract
       corr.results <- cor(df_extract$nitrate,df_extract$sulfate,use = "complete.obs")
  #      corr.results
        summary(corr.results)
        
}


