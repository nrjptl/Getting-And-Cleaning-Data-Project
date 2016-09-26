

## merging subject_train and subject_test files and storing resultant data into subjectdata.
## setting the names to the subjectdata data table.
subjectdata <- mergeFiles(path1 = file.path(dataPath,"train","subject_train.txt"),
                          path2 = file.path(dataPath,"test","subject_test.txt"))
setnames(subjectdata,"V1","subjectnum")

dim(subjectdata)
[1] 10299     1

## merging y_train and y_test files and storing resultant data into activitydata.
## setting the names to the activitydata data table.
activitydata <- mergeFiles(path1 = file.path(dataPath,"train","y_train.txt"),
                           path2 = file.path(dataPath,"test","y_test.txt"))
setnames(activitydata,"V1","activitynum")

dim(activitydata)
[1] 10299     1

## merging x_train and x_test files and storing resultant data into main_data
main_data <- mergeFiles(path1 = file.path(dataPath,"train","x_train.txt"),
                    path2 = file.path(dataPath,"test","x_test.txt"))
					
dim(main_data)
[1] 10299   561

## merge the data coloumn wise
tmptable <- cbind(subjectdata,activitydata)

dim(tmptable)
[1] 10299     2

