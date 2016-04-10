# Libraries required
library(dplyr)
library(reshape2)

# Preliminaries - loading and unzipping dataset, tidy up by removing all objects from environment

filename <- "getdata_dataset.zip" 

## Download the dataset (if not done already):
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, mode="wb") #method="curl")
}  

unzip(filename) # unzips data into "UCI HAR Dataset" subfolder
rm(list=ls())   # tidy up

# Merge the training and the test data sets

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

# Load "features" and format text as characters
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
featuresNames <- features[,2]

# Name the columns, including labeling the features with descriptive variable names
names(allData) <- c("subject","activity",featuresNames)

# Tidy up variable names
colnames(allData) <- gsub('-mean', 'Mean', colnames(allData))
colnames(allData) <- gsub('-std', 'Std', colnames(allData))
colnames(subsetData) <- gsub('[[:punct:]]', '', colnames(subsetData))

# Keep every feature whose name includes the text "mean", "Mean", "std" and "Std"
featuresToKeep <- grep(".*[Mm]ean.*|*.[Ss]td.*", featuresNames)
featuresToKeep # check
subsetData <- allData[c(1,2,featuresToKeep+2)]

# Load "activity_labels.txt" and format text as characters
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])

# Use descriptive activity names to name the activities in the data set 
# and convert to a factor variable
subsetData$activity <- factor(subsetData$activity, 
                              levels = activityLabels[,1], 
                              labels = activityLabels[,2])

# Create a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# Convert subject variable to factor variable
subsetData$subject <- as.factor(allData$subject)

subsetData.melted <- melt(subsetData, id = c("subject", "activity"))
subsetData.mean <- dcast(subsetData.melted, subject + activity ~ variable, mean)

# Write output file
write.table(subsetData.mean, "short_tidyData.txt", row.names = FALSE, quote = FALSE)