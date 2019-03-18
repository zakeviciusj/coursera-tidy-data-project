# This R program will take the raw activity tracker data from a number of files
# and will combine them into a single analysis-ready tidy data table
# In addition, we will create a summary table with some descriptive statistics
# about measurements

# We start by doing some environment preparation steps

# We first set the working directory where all the main files will be located
# We find the directory where this script is located and then assing it as work directory
script.dir <- dirname(sys.frame(1)$ofile)
setwd(script.dir)
# We will need dplyr package for some steps
# First we check if it is already installed, if not - we install it
if(!require("dplyr")) {
  install.packages("dplyr")
}
# And now we load the dplyr package
library(dplyr)
# Now we do the shame for reshape 2 packages
if(!require("reshape2")) {
  install.packages("reshape2")
}
library(reshape2)

# Here we start the actual file manipulation and data preparation

# First we read all 3 Training datasets into dataframes
dfTrainMeasures <- read.table("train/X_train.txt", sep="", colClasses = "numeric")
dfTrainActivities <- read.table("train/Y_train.txt")
dfTrainSubjects <- read.table("train/subject_train.txt")

# And then the 3 Test datasets
dfTestMeasures <- read.table("test/X_test.txt", sep="", colClasses = "numeric")
dfTestActivities <- read.table("test/Y_test.txt")
dfTestSubjects <- read.table("test/subject_test.txt")

# We bind each set of 3 datasets into a two separate tables -
# one for Train and one for Test data
# We also add a new column ("recordset") to differentiate  between Test and Train data
dfTrain <- cbind (dfTrainSubjects, dfTrainActivities, dfTrainMeasures)
dfTrain$recordset = "train"
dfTest <- cbind(dfTestSubjects, dfTestActivities, dfTestMeasures)
dfTest$recordset = "test"

# Now we combine the two separate datasets into one master table
dfTotal <- rbind(dfTrain, dfTest)

# Here we clear the temporary tables to free up the memory
remove(dfTest, dfTestMeasures, dfTestSubjects, dfTestActivities)
remove(dfTrain, dfTrainMeasures, dfTrainActivities, dfTrainSubjects)

# We now read the column header names and attach them to the data frame
dfHeadersList <- read.table("features.txt", colClasses = "character")
dfHeaders <- c("subject", "activity", dfHeadersList$V2, "recordset")
names(dfTotal) <- dfHeaders

# We will only keep measures that refer to Mean and Standard Deviation
# We find the columns that match this criteria and create a new data frame
# with these columns only
includeColumns1 <- grep("[Mm]ean\\(\\)", dfHeaders)
includeColumns2 <- grep("[Ss]td",dfHeaders)
dfClean <- dfTotal[,c(1,2,564,includeColumns1, includeColumns2)]

# Here we load the file with activity labels 
dfActivityNames <- read.table("activity_labels.txt")
# Clean up the activity labels by replacing underscore with space
dfActivityNames$V2 <- sub("_", " ", dfActivityNames$V2)
# And converting to proper case
proper=function(x) paste0(toupper(substr(x, 1, 1)), tolower(substring(x, 2)))
dfActivityNames$V2 <- proper(dfActivityNames$V2)
# And finally we match the activity names to IDs
dfMerge = merge(dfClean, dfActivityNames, by.x = "activity", by.y = "V1")
# Again we reshape the dataset so that only required columns remain
dfClean <- select(dfMerge, subject, V2, recordset, 4:69)
# Rename the column with activity name
dfClean <- rename(dfClean, activity = V2)
# Recast the recordset type from string to factor
dfClean$recordset <- as.factor(dfClean$recordset)
# And remove unused data frames to clear up memory
remove(dfTotal, dfMerge)

# Here are a few functions to bacth-rename the column names into a tidy format:
# Replace "f" to Frequency and "t" to Time in the beginning of the measure name
names(dfClean) <- sub("^f", "Frequency", names(dfClean))
names(dfClean) <- sub("^t", "Time", names(dfClean))
# Rename mean() and std() to Mean and StandardDeviation
names(dfClean) <- sub("mean\\(\\)", "Mean", names(dfClean))
names(dfClean) <- sub("std\\(\\)", "StandardDeviation", names(dfClean))
# Rename -XYZ at the end of the measure to -XYZdimension
names(dfClean) <- sub("-X$", "-Xdimension", names(dfClean))
names(dfClean) <- sub("-Y$", "-Ydimension", names(dfClean))
names(dfClean) <- sub("-Z$", "-Zdimension", names(dfClean))
# And finally rename the type of measurement
names(dfClean) <- sub("Acc", "Accelerometer", names(dfClean))
names(dfClean) <- sub("Gyro", "Gyroscope", names(dfClean))
names(dfClean) <- sub("Mag", "Magnitude", names(dfClean))
# It is worth mentioning that I do not really understand these measurements so new names
# might not be the best descriptors of what is being measured

# Here we reshape the data frame into skiny format to prepare for summary
dfMelt <- melt(dfClean, id=c("subject", "activity"),
    measure.vars = names(dfClean)[-c(1,2,3)])
# And create a summarized table calculating mean for each subject, activity and variable
dfSummary <- group_by (dfMelt, subject, activity, variable) %>%
    summarize (mean = mean(value))

# And finally we export the syummary table to a text file
write.table(dfSummary, "Tracker Summary.txt", row.names=FALSE)