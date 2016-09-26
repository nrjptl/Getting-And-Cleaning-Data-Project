DescriptiveActivities <- function(){
    
    ## read activities and naming the data set.
    dtactivitynames <- fread(file.path(dataPath, "activity_labels.txt"))
    setnames(dtactivitynames, names(dtactivitynames), c("activitynum", "activityname"))
}