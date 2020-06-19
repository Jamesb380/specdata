library(plyr)
library(readr)




complete <- function(directory, id = 1:332){
     
     df_extract <- file.inputl(directory, id)
     blanks <- which(is.na(df_extract$nitrate))
     df_extract <- df_extract[-blanks,]
     sags <- which(is.na(df_extract$sulfate))
     df_extract <- df_extract[-sags,]
     count(df_extract$ID)
     
}



