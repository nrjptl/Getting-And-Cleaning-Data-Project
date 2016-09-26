README for getting and cleaning data Week 4 project.

Total 6 scripts are available to get the data set and make a tidy data set.

All the scripts and it's use is as below:
=============================================================
run_analysis.R
GetPackagesAndDataset.R
MergingTrainingAndTest.R
MergeFiles.R
MeanAndSdValues.R
DescriptiveActivities.R


The descrption for each script is as below:
=============================================================
1. run_analysis.R
-> It is the main script which stores all the required data. run_analysis.R sources other scripts,
execute their code and make a tidy data set.
-> It doesn't take any arguments.
-> write mean data into meanData.txt file

2. GetPackagesAndDataset.R
-> This script check whether required packages are installed or not.
If not it installs them.
-> Download the data set if it is not downloaded previously.

3. MergingTrainingAndTest.R
-> Merges the training and test data set with the help of MergeFiles.R script.
-> This script performs the 1st task of the assignment.

4. MergeFiles.R
-> MergeFiles takes two arguments as file path(path1,path2) and merges both the files
row wise(using rbind).
-> Returns the merged data table.

5. MeanAndSdValues.R 
-> This script extract the mean() and std() values from the merged data set.
-> Stores the feature name and feature num vector in global variable 'featGlobal'.
-> Takes no argument and returns data set with only mean() and std() values.

6. DescriptiveActivities.R
-> Read a file and get Activity names and activity numbers.
-> This script performs the 3rd task of the assignment. 


How the scripts are connected.
=============================================================
-> run_analysis.R script calls GetPackagesAndDataset.R to install reuired packages and downloading the dataset.
-> run_analysis.R script calls MergingTrainingAndTest.R to merge the train and test values. Here MergeFiles.R helps
to get the work done by binding data row wise.
-> run_analysis.R script calls MeanAndSdValues.R to extract the mean and std values only.
-> DescriptiveActivities.R read the file and get activity name and activity num.
-> All remaining tasks like reshaping the data, finding the mean value of the data set is done by run_analysis.R only.