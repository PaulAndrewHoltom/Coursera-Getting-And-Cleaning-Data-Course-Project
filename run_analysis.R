########
# Step 0 : Preliminaries - loading required libraries, 
#           loading and unzipping dataset, tidy up by removing all objects from environment
########

# Libraries required
library(dplyr)
library(reshape2)

filename <- "getdata_dataset.zip" 

## Download the dataset (if not done already):
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, mode="wb")
}  

unzip(filename) # unzips data into "UCI HAR Dataset" subfolder of working directory
rm(list=ls())   # tidy up

########
# Step 1 : Merge the training and the test data sets to create one data set
########

# features data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
X_all <- rbind(X_test, X_train)

# activity data
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
y_all <- rbind(y_test, y_train)

# subjects data
sub_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
sub_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
sub_all <- rbind(sub_test, sub_train)

# cbind test and train datasets 
allData <- cbind(sub_all,y_all,X_all)

# Add column labels for first two columns of allData
names(allData)[1:2] <- c("subject","activity")

########
# Step 2 : Extract only the measurements on the mean and standard deviation for each measurement
########

# Load "features" and format text as characters
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
featuresNames <- features[,2]

# Keep every feature whose name includes the text "mean", "Mean", or "std" or "Std"
featuresToKeep <- grep(".*[Mm]ean.*|*.[Ss]td.*", featuresNames)
subsetData <- allData[c(1,2,featuresToKeep+2)]
featuresToKeepNames <- featuresNames[featuresToKeep] # featuresToKeepNames used in Step 4 

########
# Step 3 : Uses descriptive activity names to name the activities in the data set
########

# Load "activity_labels.txt" and format text as characters
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])

# Update activity variable with correct activity names and convert to a factor variable
subsetData$activity <- factor(subsetData$activity, 
                              levels = activityLabels[,1], 
                              labels = activityLabels[,2])

########
# Step 4 : Appropriately label the data set with descriptive variable names
########

# Use featuresToKeepNames vector created in Step 2 to name variables
names(subsetData)[-(1:2)] <- featuresToKeepNames

# Tidy up variable names
colnames(subsetData) <- gsub('-mean', 'Mean', colnames(subsetData))
colnames(subsetData) <- gsub('-std', 'Std', colnames(subsetData))
colnames(subsetData) <- gsub('[[:punct:]]', '', colnames(subsetData))

########
# Step 5 : From the data set in Step 4, create a second, independent tidy data set with the average 
#           of each variable for each activity and each subject.
########

# Convert subject variable to factor variable
subsetData$subject <- as.factor(allData$subject)

subsetData.melted <- melt(subsetData, id = c("subject", "activity"))
subsetData.mean <- dcast(subsetData.melted, subject + activity ~ variable, mean)

# Write output file
write.table(subsetData.mean, "tidyData.txt", row.names = FALSE, quote = FALSE)