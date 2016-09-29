## calling a function to download required packages and dataset.
source(file.path(getwd(),"GetPackagesAndDataset.R"))
GetPackagesAndDataset()

## Task 1: Merges the training and the test sets to create one data set
source(file.path(getwd(),"MergingTrainingAndTest.R"))
source(file.path(getwd(),"MergeFiles.R"))
dataPath <- file.path(getwd(),"UCI HAR Dataset")
main_data <- MergingTrainingAndTest()

## Task 2: Extracts only the measurements on the mean
## and standard deviation for each measurement
source(file.path(getwd(),"MeanAndSdValues.R"))
MeanStdData <- MeanAndSdValues(data = main_data)

## Task 3: Uses descriptive activity names to name the activities in the data set
source(file.path(getwd(),"DescriptiveActivities.R"))
ActivityNames <- DescriptiveActivities()

## Task 4: Appropriately labels the data set with descriptive activity names.
## Merging main_data with the activity details thus, main_data will contain 
## activity names.
## Setting the activity name as the key.
MeanStdData <- merge(MeanStdData,ActivityNames,by = "activitynum", all.x = TRUE)
setkey(MeanStdData, subjectnum, activitynum, activityname)

## Reshaping the data using melt function.
reshaped_main_data <- data.table(melt(MeanStdData, key(MeanStdData), variable.name="featcode"))
## Merging feature name details with the reshaped data.
## Thus, reshaped data contains feature name.
data_with_features <- merge(reshaped_main_data, featGlobal, by="featcode", all.x=TRUE)

## Task 5 : Creates a second, independent tidy data set with the average of each variable for each activity and each
##subject.
##finding mean values by the subject and by activities as per the requirement.
setkey(data_with_features, subjectnum, activitynum, activityname, featcode)
dtMean <- data_with_features[,"mean_value":=mean(value),by=list(subjectnum,activitynum,featcode)][]
dtMean$value <- NULL
dtMean$featcode <- NULL
setkey(dtMean)
dtMean <- unique(dtMean)
## Viewing the table
View(dtMean)
## Writing it to the txt file.
write.table(dtMean,"meanData.txt",row.names = FALSE)
## length(unique(dtMean$featname)) * length(unique(dtMean$activityname)) * length(unique(dtMean$subjectnum))
## is equals to nrow(dtMean)