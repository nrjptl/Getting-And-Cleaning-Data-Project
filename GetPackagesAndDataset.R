GetPackagesAndDataset <- function(){
    ## installing required packages
    
    if(!"data.table" %in% loadedNamespaces()){
        install.packages("data.table")
        library(data.table)
    }
    
    ## downloading the data set from the mentioed link.
    
    if(!file.exists("UCI HAR Dataset")){
        ## downloading zip file and unzupping it if the dataset file does not exist.
        zipurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(zipurl, destfile = "projectzip.zip")
        unzip("projectzip.zip")
    }
}