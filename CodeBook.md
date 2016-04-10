# Code Book

This code book summarizes the data fields in `tidyData.txt`.

## Identifiers

* `subject` - The participant ID
* `activity` - The type of activity performed when the corresponding measurements were taken

## Measurements

Each feature is normalized and bounded within [-1,1]

* `tBodyAccMeanX` \ \ \ [originally `tBodyAcc-mean()-X` (column `1`)]
* `tBodyAccMeanY` [originally `tBodyAcc-mean()-Y` (column `2`)]
* `tBodyAccMeanZ` [originally `tBodyAcc-mean()-Z` (column `3`)]
* `tBodyAccStdX` [originally `tBodyAcc-std()-X` (column `4`)]
* `tBodyAccStdY` [originally `tBodyAcc-std()-Y` (column `5`)]
* `tBodyAccStdZ` [originally `tBodyAcc-std()-Z` (column `6`)]
* `tGravityAccMeanX` [originally `tGravityAcc-mean()-X` (column `41`)]
* `tGravityAccMeanY` [originally `tGravityAcc-mean()-Y` (column `42`)]
* `tGravityAccMeanZ` [originally `tGravityAcc-mean()-Z` (column `43`)]
* `tGravityAccStdX` [originally `tGravityAcc-std()-X` (column `44`)]
* `tGravityAccStdY` [originally `tGravityAcc-std()-Y` (column `45`)]
* `tGravityAccStdZ` [originally `tGravityAcc-std()-Z` (column `46`)]
* `tBodyAccJerkMeanX` [originally `tBodyAccJerk-mean()-X` (column `81`)]
* `tBodyAccJerkMeanY` [originally `tBodyAccJerk-mean()-Y` (column `82`)]
* `tBodyAccJerkMeanZ` [originally `tBodyAccJerk-mean()-Z` (column `83`)]
* `tBodyAccJerkStdX` [originally `tBodyAccJerk-std()-X` (column `84`)]
* `tBodyAccJerkStdY` [originally `tBodyAccJerk-std()-Y` (column `85`)]
* `tBodyAccJerkStdZ` [originally `tBodyAccJerk-std()-Z` (column `86`)]
* `tBodyGyroMeanX` [originally `tBodyGyro-mean()-X` (column `121`)]
* `tBodyGyroMeanY` [originally `tBodyGyro-mean()-Y` (column `122`)]
* `tBodyGyroMeanZ` [originally `tBodyGyro-mean()-Z` (column `123`)]
* `tBodyGyroStdX` [originally `tBodyGyro-std()-X` (column `124`)]
* `tBodyGyroStdY` [originally `tBodyGyro-std()-Y` (column `125`)]
* `tBodyGyroStdZ` [originally `tBodyGyro-std()-Z` (column `126`)]
* `tBodyGyroJerkMeanX` [originally `tBodyGyroJerk-mean()-X` (column `161`)]
* `tBodyGyroJerkMeanY` [originally `tBodyGyroJerk-mean()-Y` (column `162`)]
* `tBodyGyroJerkMeanZ` [originally `tBodyGyroJerk-mean()-Z` (column `163`)]
* `tBodyGyroJerkStdX` [originally `tBodyGyroJerk-std()-X` (column `164`)]
* `tBodyGyroJerkStdY` [originally `tBodyGyroJerk-std()-Y` (column `165`)]
* `tBodyGyroJerkStdZ` [originally `tBodyGyroJerk-std()-Z` (column `166`)]
* `tBodyAccMagMean` [originally `tBodyAccMag-mean()` (column `201`)]
* `tBodyAccMagStd` [originally `tBodyAccMag-std()` (column `202`)]
* `tGravityAccMagMean` [originally `tGravityAccMag-mean()` (column `214`)]
* `tGravityAccMagStd` [originally `tGravityAccMag-std()` (column `215`)]
* `tBodyAccJerkMagMean` [originally `tBodyAccJerkMag-mean()` (column `227`)]
* `tBodyAccJerkMagStd` [originally `tBodyAccJerkMag-std()` (column `228`)]
* `tBodyGyroMagMean` [originally `tBodyGyroMag-mean()` (column `240`)]
* `tBodyGyroMagStd` [originally `tBodyGyroMag-std()` (column `241`)]
* `tBodyGyroJerkMagMean` [originally `tBodyGyroJerkMag-mean()` (column `253`)]
* `tBodyGyroJerkMagStd` [originally `tBodyGyroJerkMag-std()` (column `254`)]
* `fBodyAccMeanX` [originally `fBodyAcc-mean()-X` (column `266`)]
* `fBodyAccMeanY` [originally `fBodyAcc-mean()-Y` (column `267`)]
* `fBodyAccMeanZ` [originally `fBodyAcc-mean()-Z` (column `268`)]
* `fBodyAccStdX` [originally `fBodyAcc-std()-X` (column `269`)]
* `fBodyAccStdY` [originally `fBodyAcc-std()-Y` (column `270`)]
* `fBodyAccStdZ` [originally `fBodyAcc-std()-Z` (column `271`)]
* `fBodyAccMeanFreqX` [originally `fBodyAcc-meanFreq()-X` (column `294`)]
* `fBodyAccMeanFreqY` [originally `fBodyAcc-meanFreq()-Y` (column `295`)]
* `fBodyAccMeanFreqZ` [originally `fBodyAcc-meanFreq()-Z` (column `296`)]
* `fBodyAccJerkMeanX` [originally `fBodyAccJerk-mean()-X` (column `345`)]
* `fBodyAccJerkMeanY` [originally `fBodyAccJerk-mean()-Y` (column `346`)]
* `fBodyAccJerkMeanZ` [originally `fBodyAccJerk-mean()-Z` (column `347`)]
* `fBodyAccJerkStdX` [originally `fBodyAccJerk-std()-X` (column `348`)]
* `fBodyAccJerkStdY` [originally `fBodyAccJerk-std()-Y` (column `349`)]
* `fBodyAccJerkStdZ` [originally `fBodyAccJerk-std()-Z` (column `350`)]
* `fBodyAccJerkMeanFreqX` [originally `fBodyAccJerk-meanFreq()-X` (column `373`)]
* `fBodyAccJerkMeanFreqY` [originally `fBodyAccJerk-meanFreq()-Y` (column `374`)]
* `fBodyAccJerkMeanFreqZ` [originally `fBodyAccJerk-meanFreq()-Z` (column `375`)]
* `fBodyGyroMeanX` [originally `fBodyGyro-mean()-X` (column `424`)]
* `fBodyGyroMeanY` [originally `fBodyGyro-mean()-Y` (column `425`)]
* `fBodyGyroMeanZ` [originally `fBodyGyro-mean()-Z` (column `426`)]
* `fBodyGyroStdX` [originally `fBodyGyro-std()-X` (column `427`)]
* `fBodyGyroStdY` [originally `fBodyGyro-std()-Y` (column `428`)]
* `fBodyGyroStdZ` [originally `fBodyGyro-std()-Z` (column `429`)]
* `fBodyGyroMeanFreqX` [originally `fBodyGyro-meanFreq()-X` (column `452`)]
* `fBodyGyroMeanFreqY` [originally `fBodyGyro-meanFreq()-Y` (column `453`)]
* `fBodyGyroMeanFreqZ` [originally `fBodyGyro-meanFreq()-Z` (column `454`)]
* `fBodyAccMagMean` [originally `fBodyAccMag-mean()` (column `503`)]
* `fBodyAccMagStd` [originally `fBodyAccMag-std()` (column `504`)]
* `fBodyAccMagMeanFreq` [originally `fBodyAccMag-meanFreq()` (column `513`)]
* `fBodyBodyAccJerkMagMean` [originally `fBodyBodyAccJerkMag-mean()` (column `516`)]
* `fBodyBodyAccJerkMagStd` [originally `fBodyBodyAccJerkMag-std()` (column `517`)]
* `fBodyBodyAccJerkMagMeanFreq` [originally `fBodyBodyAccJerkMag-meanFreq()` (column `526`)]
* `fBodyBodyGyroMagMean` [originally `fBodyBodyGyroMag-mean()` (column `529`)]
* `fBodyBodyGyroMagStd` [originally `fBodyBodyGyroMag-std()` (column `530`)]
* `fBodyBodyGyroMagMeanFreq` [originally `fBodyBodyGyroMag-meanFreq()` (column `539`)]
* `fBodyBodyGyroJerkMagMean` [originally `fBodyBodyGyroJerkMag-mean()` (column `542`)]
* `fBodyBodyGyroJerkMagStd` [originally `fBodyBodyGyroJerkMag-std()` (column `543`)]
* `fBodyBodyGyroJerkMagMeanFreq` [originally `fBodyBodyGyroJerkMag-meanFreq()` (column `552`)]
* `angletBodyAccMeangravity` [originally `angle(tBodyAccMean,gravity)` (column `555`)]
* `angletBodyAccJerkMeangravityMean` [originally `angle(tBodyAccJerkMean),gravityMean)` (column `556`)]
* `angletBodyGyroMeangravityMean` [originally `angle(tBodyGyroMean,gravityMean)` (column `557`)]
* `angletBodyGyroJerkMeangravityMean` [originally `angle(tBodyGyroJerkMean,gravityMean)` (column `558`)]
* `angleXgravityMean` [originally `angle(X,gravityMean)` (column `559`)]
* `angleYgravityMean` [originally `angle(Y,gravityMean)` (column `560`)]
* `angleZgravityMean` [originally `angle(Z,gravityMean)` (column `561`)]

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

## Study Design

For details of the study design, including a description of how the data were collected, 
please see the original `README.txt` file for the 
[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
dataset used.