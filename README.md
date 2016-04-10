Getting and Cleaning Data - Course Project
==========================================

This repository hosts the R code and documentation files for the **Course Project** for the **Coursera "Getting and Cleaning data" course**.

The dataset used is: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files

* `CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data

* `run_analysis.R` contains all the code to perform the 5 steps of the Course Project assignment

The code assumes all the data is present in the same folder, un-compressed and without names altered. For this reason, the first part of the code
("Step 0") is required the first time the script is run.  
The `README.txt` and `features_info.txt` files for the original data source contain full descriptions of the contents of the raw data files. 

## `run_analysis.R` script

The R script `run_analysis.R` follows the instructions as outlined below:

* You should create one R script called run_analysis.R that does the following.
	1. Merges the training and the test sets to create one data set.
	2. Extracts only the measurements on the mean and standard deviation for each measurement.
	3. Uses descriptive activity names to name the activities in the data set
	4. Appropriately labels the data set with descriptive variable names.
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Following these directions, the script is set out as follows:
* Step 0
Carries out **preliminaries steps**, such as loading the required libraries, downloading and unzipping the dataset, 
and tidying up by removing all objects from environment. **This step does not always need to be executed in full**.

* Step 1
Uses `rbind` command to **merge** the features, activity and subjects parts of the training and the test 
raw data, and the function `cbind' to merge these into a **single data set** (as yet without meaningful column names).

The first two columns of the merged data set are renamed `subject' and `activity` respectively.

* Step 2
Here we **extract only the measurements on the mean and standard deviation for each measurement**.
We have assumed that any column name including the text "mean", "Mean", "std" and "Std" should be retained here, 
which constitutes 86 features in total, which are retained in the final 'tidy' data set.
Note that the result is that the "Additional vectors [...] used on the angle() variable" 
(see the `features_info.txt` for details) are retained in the final tidy data set - this is a conscious decision based on
the desire to following the directions in the assignment, and these additional variables may be removed from the 
data set at a later date if it turns out that they constitute a different observational unit than the other variables.

The variables were renamed by removing non-alpha-numeric characters.

* Step 3
Uses the descriptive activity names from the "activity_labels.txt" to **name the activities** in the data set.
The `activity` variable is formatted as a factor to enable use of the `melt` and `dcast` functions in Step 5.

* Step 4
We **label the data set with appropriate descriptive variable names** using the vector `featuresToKeepNames` created in Step 2.
These **names are tidied up** by using consistent version of "Mean" and "Std", and by removing all punctuation, so that variable
names are all alpha-numeric and therefore easier to read.

* Step 5
First the `subject` variable is formatted as a factor. Then we 
**create a tidy dataset** that consists of the average (mean) value of each variable for each subject and activity pair, using 
the `melt` and `dcast` functions.

The end result is written to a file `tidyData.txt` in the working directory.

## Cleaned Data

The CodeBook still has the specific description of the tidy data file contents, including the list of all 86 variables that 
were retained in the final 'tidy' data `tidyData.txt`. 
The tidy data text file that meets the principles of tidy data as outlined in the course and specified in full 
in the article ["Tidy Data"] (https://www.jstatsoft.org/article/view/v059i10/v59i10.pdf)

* "Each variable forms a column": `tidyData.txt` contains contains columns for `subject`, `activity`, 
and for each feature that was a mean or standard deviation from the original dataset
* "Each observation forms a row": `tidyData.txt` contains one row for each subject/activity pair 
* "Each type of observational unit forms a table": it is assumed that all measurements in the original data have the 
same observational unit

In addition, the rows of `tidyData.txt` are sorted by `subject` and then `activity`, and the variables were renamed to make them 
more human-readable by removing non-alpha-numeric characters.

## Running the script
Place the `run_analysis.R` script in your working directory and execute the command
```{r}
source("run_analysis.R")
```

## Note
The `run_analysis.R` script follows as closely as possible the Step 1-5 structure as outlined in the assignment instructions. 
The there is of course a quicker way of producing the (identical) tidy data set that merges and/or reorders 
some of these steps. Such a code is shown in `run_analysis(short).R`, which has the added benefit that the allData table - which is 
the merge of the test and train datasets before the "mean"/"std" subsetting - already has meaningful variable names, which could
be useful for future analyses using this data.