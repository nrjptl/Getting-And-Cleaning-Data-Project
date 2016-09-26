MeanAndSdValues <- function(data){
    
    ## reading features.txt file and setting the names of the features.
    ## save features in Global Environment so it could be used later.
    features <- fread(file.path(dataPath,"features.txt"))
    setnames(features,names(features),c("featnum","featname"))
    
    getfeatures <- function() features
    
    ## getting the features row which contains 'mean(' or 'std(',
    ## Thus, it gives only mean() and std() features as per the requirement
    features <- features[grepl("mean\\(|std\\(",features$featname)]
    
    ## introducing a new variable which matches the variable name with the
    ## main_data variables
    features$featcode <- features[, paste0("V", featnum)]
    
    featGlobal <<- features
    
    ## filtering data table with the keys(subjectnum, activitynum) and 
    ## featurecode
    select <- c(key(main_data), features$featcode)
    data[, select, with=FALSE]
}

