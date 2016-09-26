MergingTrainingAndTest <- function(){
    
    ## merging subject_train and subject_test files and storing resultant data into subjectdata.
    ## setting the names to the subjectdata data table.
    subjectdata <- MergeFiles(path1 = file.path(dataPath,"train","subject_train.txt"),
                              path2 = file.path(dataPath,"test","subject_test.txt"))
    setnames(subjectdata,"V1","subjectnum")
    
    ## merging y_train and y_test files and storing resultant data into activitydata.
    ## setting the names to the activitydata data table.
    activitydata <- MergeFiles(path1 = file.path(dataPath,"train","y_train.txt"),
                               path2 = file.path(dataPath,"test","y_test.txt"))
    setnames(activitydata,"V1","activitynum")
    
    ## merging x_train and x_test files and storing resultant data into main_data
    main_data <- MergeFiles(path1 = file.path(dataPath,"train","x_train.txt"),
                            path2 = file.path(dataPath,"test","x_test.txt"))
    
    ## merge the data coloumn wise
    tmptable <- cbind(subjectdata,activitydata)
    main_data <- cbind(tmptable,main_data)
    remove(tmptable)
    ## sorting main_data with subjectnum and then with activitynum for easy manipulation.
    setkey(main_data,subjectnum,activitynum)
    
    ## returnn main_data to the caller back
}
    