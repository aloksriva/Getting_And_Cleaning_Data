Code Book for Coursera's Getting and Cleaning Data Project Submission
=====================================================================

ID Variables

subject: subject number

activity: activity performed by subject while wearing accelerometer, as a string

Measurement Variables

The measurement variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)

These fields are all taken from the source data (described below), but mean-averaged across all instances of each activity for each subject. The units are unchanged from the source data (again, see below, or perhaps investigate further at the source).

('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)

tBodyAcc-mean()-XYZ

tBodyAcc-std()-XYZ

tGravityAcc-mean()-XYZ

tGravityAcc-std()-XYZ

tBodyAccJerk-mean()-XYZ

tBodyAccJerk-std()-XYZ

tBodyGyro-mean()-XYZ

tBodyGyro-std()-XYZ

tBodyGyroJerk-mean()-XYZ

tBodyGyroJerk-std()-XYZ

tBodyAccMag-mean()

tGravityAccMag-std()

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-XYZ

fBodyAcc-std()-XYZ

fBodyAccJerk-mean()-XYZ

fBodyAccJerk-std()-XYZ

fBodyGyro-mean()-XYZ

fBodyGyro-std()-XYZ

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()
