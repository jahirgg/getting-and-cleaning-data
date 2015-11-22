#
# The following script perform the necessary steps to create two
# sets of tidy data as instructed by the 
# Getting and Cleaning Data Course Project
#

# 1. Reading the data into variables:
# Each of this variables holds part of the structure of the file
# that is going to be processed to become one tidy data set

# Vector with the feature names
features <- read.table("features.txt") 

# Reading the test variables
X_test = read.table("test/X_test.txt")
Y_test = read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# Reading the train variables
X_train = read.table("train/X_train.txt")
Y_train = read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

# Reading the activity labels that describe Y_test and Y_train
activity_labels <- read.table("activity_labels.txt")

# Loading the "plyr" package to enable us to use "join"
library(plyr)

# This codes add a column to Y_test and Y_train with the 
# name of the performed activity stated with a number from
# one to six.

Y_test <- join(Y_test,activity_labels,"V1",type="left")
Y_train <- join(Y_train,activity_labels,"V1",type="left")

# Here we create an extract logical vector variable that contains
# a true value whenever the name of the variable contains the string
# "-mean()" or "-std()".
# This variable is going to be passed to the features and X variables 
# to produce a data set with only the means and st. dev. for each measure
extract <- grepl("-mean()",features[,2],fixed=TRUE) | grepl("-std()",features[,2],fixed=TRUE)

# In this section we merge or bind together the train and test datasets
X <- rbind(X_train,X_test)
Y <- rbind(Y_train,Y_test)
subject <- rbind(subject_train,subject_test)

# Assigning variable names to each column
colnames(X) <- features[,2]

# Extracting only the columns that have mean and st. devs.
Xm <- X[,extract]

# This vector will contain the final names of the columns 
# for our first table
c <- c("subject",colnames(Xm),"activity")

# Here we put together all columns from the different variables
# and assign a new column name to each column according to "c"
M <- cbind(subject,Xm,Y[,2])
colnames(M) <- c

# Here we reorder the column names for the second variable
# containing the average of the aggregated subjects and activities
c <- c("subject","activity",colnames(Xm))

# Using the aggregate function, this creates the second data set
# and then each column is properly named.
A <- aggregate(M[,2:67],by=list(M$subject,M$activity),mean)
colnames(A) <- c

# Removing unneeded variables
remove(subject)
remove(subject_test)
remove(subject_train)
remove(X_train)
remove(X_test)
remove(X)
remove(Y_test)
remove(Y_train)
remove(Y)
remove(Xm)
remove(extract)
remove(c)