#Code Book

##Credits

This project uses the data from the <b> Human Activity Recognition Using Smartphones Dataset, Version 1.0 </b>  compiled by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto.

<b>Contact Information </b>
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

##The Experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

##Feature Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
<b>
<bl>
tBodyAcc-XYZ<bl>
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
</b>
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Now, to produce each of our features in our data set, we got the mean and standard deviation of each vector pattern. You will be able fo find the features in the following order:
1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
7 tGravityAcc-mean()-X
8 tGravityAcc-mean()-Y
9 tGravityAcc-mean()-Z
10 tGravityAcc-std()-X
11 tGravityAcc-std()-Y
12 tGravityAcc-std()-Z
13 tBodyAccJerk-mean()-X
14 tBodyAccJerk-mean()-Y
15 tBodyAccJerk-mean()-Z
16 tBodyAccJerk-std()-X
17 tBodyAccJerk-std()-Y
18 tBodyAccJerk-std()-Z
19 tBodyGyro-mean()-X
20 tBodyGyro-mean()-Y
21 tBodyGyro-mean()-Z
22 tBodyGyro-std()-X
23 tBodyGyro-std()-Y
24 tBodyGyro-std()-Z
25 tBodyGyroJerk-mean()-X
26 tBodyGyroJerk-mean()-Y
27 tBodyGyroJerk-mean()-Z
28 tBodyGyroJerk-std()-X
29 tBodyGyroJerk-std()-Y
30 tBodyGyroJerk-std()-Z
31 tBodyAccMag-mean()
32 tBodyAccMag-std()
33 tGravityAccMag-mean()
34 tGravityAccMag-std()
35 tBodyAccJerkMag-mean()
36 tBodyAccJerkMag-std()
37 tBodyGyroMag-mean()
38 tBodyGyroMag-std()
39 tBodyGyroJerkMag-mean()
40 tBodyGyroJerkMag-std()
41 fBodyAcc-mean()-X
42 fBodyAcc-mean()-Y
43 fBodyAcc-mean()-Z
44 fBodyAcc-std()-X
45 fBodyAcc-std()-Y
46 fBodyAcc-std()-Z
47 fBodyAccJerk-mean()-X
48 fBodyAccJerk-mean()-Y
49 fBodyAccJerk-mean()-Z
50 fBodyAccJerk-std()-X
51 fBodyAccJerk-std()-Y
52 fBodyAccJerk-std()-Z
53 fBodyGyro-mean()-X
54 fBodyGyro-mean()-Y
55 fBodyGyro-mean()-Z
56 fBodyGyro-std()-X
57 fBodyGyro-std()-Y
58 fBodyGyro-std()-Z
59 fBodyAccMag-mean()
60 fBodyAccMag-std()
61 fBodyBodyAccJerkMag-mean()
62 fBodyBodyAccJerkMag-std()
63 fBodyBodyGyroMag-mean()
64 fBodyBodyGyroMag-std()
65 fBodyBodyGyroJerkMag-mean()
66 fBodyBodyGyroJerkMag-std()

#Tidy Data Sets

M: Merged Data Set
- This data set contains the selection of SUBJECT and ACTIVITY for each of the above measures.
- This has the raw data combined into columns for subject, all the features and activity 

A: Averages Data Set
- This data set calculares an average by SUBJECT and ACTIVITY for each of the above measures.
- This data set has 180 rows (30 subjects by 6 activities) and an average of each measure for each combination.

