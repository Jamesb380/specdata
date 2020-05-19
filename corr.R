
library(plyr)
library(readr)

setwd("/Users/james.bennett/Desktop/specdata")

####Load Input Handler
source("./complete.R")

corr <- function(directory, threshold = 0){
        
        id <- which(complete.stats$nobs >= threshold)
        df_extract <- file.inputl(directory, id)
        corr.results <- cor(df_extract[,3],df_extract[,2],use = "complete.obs")
        corr.results
        
}

mi.dir <- "/Users/james.bennett/Desktop/specdata/data/specdata"
limite <- 1500
results.corr <- corr(mi.dir,limite)
