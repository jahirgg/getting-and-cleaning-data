# Read Me

## Summary

The code in this project, creates two separate "tidy data sets" that contains data for 30 subjects regarding the use of wearable technology.

The data sets produced are called:
- M: Merged data set with the number of the subject, 561 features and name of the activity they were performing.
- A: Avergaes data set with the average per feature for each subject and for each activity.

## How to run the script?

To run this code, please follow these steps:

1. Download the data from : https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip to the directory of your choice.
3. Download the run_analysis.R file from this repository into the unzipped folder (e.g. ../UCI HAR Dataset)
4. Open R or RStudio and set your working directory to the unzipped folder
5. In R, type the command: <b>source("run_analysis.R")

After doing this, you will be able to use the M and A variables described above.

