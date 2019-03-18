# coursera-tidy-data-project
Repository for Coursera Data Science course 3 project
## File list
The following is a list of files that are needed for this script

File name  | Folder | Description
--- | --- | ---
run_analysis.R | / | The main R script file
features.txt | / | Header names for the datasets
activity_labels.txt | / | Text file with translation of activity IDs (1-6) to activity labels
subject_test.txt | /test | Identifier of a subject associated with each measurement for test dataset
X_test.txt | /test | Test dataset of tracker measurements
Y_test.txt | /test | Identifier of activity associated with each measurement for test dataset
subject_train.txt | /train | Identifier of a subject associated with each measurement for train dataset
X_train.txt | /train | Train dataset of tracker measurements
Y_train.txt | /train | Identifier of activity associated with each measurement for train dataset

## Process description
The following steps are taken in the script to derive tidy datasets

1. Location of the script file is identified and set as working directory
*!!! All files must be in the same directory (or child directory as listed in the File list above) for the script to work correctly !!!*
2. Checks whether required packages are installed; if not - installs them first, then loads them
*dplyr and reshape2 packages are used in the script*
3. Reads Test and Train datasets
4. Binds the datasets together and adds an indicator to distinguish between Test and Train data
5. Attaches column names based on the features.txt file
6. Removes unnecessary columns - only the Mean and Standard Deviation columns are kept as measures
*Note that Angle and MeanFreq measures are also removed as these are derivatives from real Mean columns; script can be easily adjusted to keep these columns as well*
7. Activity types are assigned user-friendly labels instead of IDs based on translation provided in activity_labels.txt file
8. Names of the measurements are adjusted to be easily readable, i.e. abbreviations are replaced
9. Finally, a summary file in skinny format is created and output to *Tracker Summary.txt* file
