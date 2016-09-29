# CODEBOOK

### Data Set
Find data set [HERE](https://github.com/nrjptl/Getting-And-Cleaning-Data-Project/tree/master/UCI%20HAR%20Dataset "link to dataset"), which contains a [README.md](https://github.com/nrjptl/Getting-And-Cleaning-Data-Project/blob/master/UCI%20HAR%20Dataset/README.md "link to README.txt") file. The same data set has been used for the project.

### Merging the data
- run_analysis.R installs required packages, download the data set and generate meanData.txt which contains mean value of each feature, for each subject and for each activity.
- run_analysis.R calls the required scripts. Scripts linking and their operations are described in [README.md]( https://github.com/nrjptl/Getting-And-Cleaning-Data-Project/blob/master/UCI%20HAR%20Dataset/README.md "############LINK GOES HERE#################link to README.md")
# add the link pls

### Data variables
Final data contains 7 variables. Each is described below:
| Variable  | Description |
|---------- | ----------- |
|subjectnum|It's a vector contains values from 1 to 30. subjectnum represents number of the subject.|
|activitynum|activitynum has whole number value between 1 to 6 which represents the number of the activity.|
|activityname|activityname maps name of the activity to corresponding activitynum.|
|featcode|Represents the code of the feature. Between V1 to V561.|
|featnum|Represents the number of the feature. Between 1 to 561.|
|featname|featname is the name of the feature. Possible values are mentioned below the table.|
|mean_value|It is the mean value of the corresponding feature measurement.|

### Variable Ranges

1. subjectnum : 1 to 30 integer values
2. activitynum : 1 to 6 integer values
3. activityname : character values. Possible values are mentioned in [activity_labels.txt](https://github.com/nrjptl/Getting-And-Cleaning-Data-Project/blob/master/UCI%20HAR%20Dataset/activity_labels.txt "link to activity_labels.txt") file.
4. featcode : character values from V1 to V561.
5. featnum : 1 to 561 integer values.
6. featname : character values. Possible values are mentioned in [features.txt](https://github.com/nrjptl/Getting-And-Cleaning-Data-Project/blob/master/UCI%20HAR%20Dataset/features.txt "link to feature.txt")  file.

#### Notes:
+ Final data set is converted into **long narrow format** for easy readability. Feature names are shown in the row values so that they can be easily interpreted.
+ Only mean() and std() values are considered. **meanfreq() is not considered** for calculations.