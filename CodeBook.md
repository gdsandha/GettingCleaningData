==================================================================
CODEBOOK for
Getting and Cleaning Data Course Project Submission
Gagandeep Sandha
==================================================================

This is a submission for the course project due on Jan 25, 2014.

The dataset includes the following files:
=========================================
tidyDataSetOutputForSubmission.txt

Data Description
=========================================
The original data source is derived from experiments that were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smart phone (Samsung Galaxy S II) on their waist. Using its embedded accelerometer and gyroscope, the scientists captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training set and 30% were assigned as test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

|  Feature Name  |  Feature Description  |  Feature Data Type  |
|  Activity  |  Activity Type  |  Factor  |
|  Subject  |  Subject Type  |  Factor  |
|  tBodyAccMeanX  |  tBodyAccMeanX Type  |  Numeric  |
|  tBodyAccMeanY  |  tBodyAccMeanY Type  |  Numeric  |
|  tBodyAccMeanZ  |  tBodyAccMeanZ Type  |  Numeric  |
|  tBodyAccStdX  |  tBodyAccStdX Type  |  Numeric  |
|  tBodyAccStdY  |  tBodyAccStdY Type  |  Numeric  |
|  tBodyAccStdZ  |  tBodyAccStdZ Type  |  Numeric  |
|  tGravityAccMeanX  |  tGravityAccMeanX Type  |  Numeric  |
|  tGravityAccMeanY  |  tGravityAccMeanY Type  |  Numeric  |
|  tGravityAccMeanZ  |  tGravityAccMeanZ Type  |  Numeric  |
|  tGravityAccStdX  |  tGravityAccStdX Type  |  Numeric  |
|  tGravityAccStdY  |  tGravityAccStdY Type  |  Numeric  |
|  tGravityAccStdZ  |  tGravityAccStdZ Type  |  Numeric  |
|  tBodyAccJerkMeanX  |  tBodyAccJerkMeanX Type  |  Numeric  |
|  tBodyAccJerkMeanY  |  tBodyAccJerkMeanY Type  |  Numeric  |
|  tBodyAccJerkMeanZ  |  tBodyAccJerkMeanZ Type  |  Numeric  |
|  tBodyAccJerkStdX  |  tBodyAccJerkStdX Type  |  Numeric  |
|  tBodyAccJerkStdY  |  tBodyAccJerkStdY Type  |  Numeric  |
|  tBodyAccJerkStdZ  |  tBodyAccJerkStdZ Type  |  Numeric  |
|  tBodyGyroMeanX  |  tBodyGyroMeanX Type  |  Numeric  |
|  tBodyGyroMeanY  |  tBodyGyroMeanY Type  |  Numeric  |
|  tBodyGyroMeanZ  |  tBodyGyroMeanZ Type  |  Numeric  |
|  tBodyGyroStdX  |  tBodyGyroStdX Type  |  Numeric  |
|  tBodyGyroStdY  |  tBodyGyroStdY Type  |  Numeric  |
|  tBodyGyroStdZ  |  tBodyGyroStdZ Type  |  Numeric  |
|  tBodyGyroJerkMeanX  |  tBodyGyroJerkMeanX Type  |  Numeric  |
|  tBodyGyroJerkMeanY  |  tBodyGyroJerkMeanY Type  |  Numeric  |
|  tBodyGyroJerkMeanZ  |  tBodyGyroJerkMeanZ Type  |  Numeric  |
|  tBodyGyroJerkStdX  |  tBodyGyroJerkStdX Type  |  Numeric  |
|  tBodyGyroJerkStdY  |  tBodyGyroJerkStdY Type  |  Numeric  |
|  tBodyGyroJerkStdZ  |  tBodyGyroJerkStdZ Type  |  Numeric  |
|  tBodyAccMagMean  |  tBodyAccMagMean Type  |  Numeric  |
|  tBodyAccMagStd  |  tBodyAccMagStd Type  |  Numeric  |
|  tGravityAccMagMean  |  tGravityAccMagMean Type  |  Numeric  |
|  tGravityAccMagStd  |  tGravityAccMagStd Type  |  Numeric  |
|  tBodyAccJerkMagMean  |  tBodyAccJerkMagMean Type  |  Numeric  |
|  tBodyAccJerkMagStd  |  tBodyAccJerkMagStd Type  |  Numeric  |
|  tBodyGyroMagMean  |  tBodyGyroMagMean Type  |  Numeric  |
|  tBodyGyroMagStd  |  tBodyGyroMagStd Type  |  Numeric  |
|  tBodyGyroJerkMagMean  |  tBodyGyroJerkMagMean Type  |  Numeric  |
|  tBodyGyroJerkMagStd  |  tBodyGyroJerkMagStd Type  |  Numeric  |
|  fBodyAccMeanX  |  fBodyAccMeanX Type  |  Numeric  |
|  fBodyAccMeanY  |  fBodyAccMeanY Type  |  Numeric  |
|  fBodyAccMeanZ  |  fBodyAccMeanZ Type  |  Numeric  |
|  fBodyAccStdX  |  fBodyAccStdX Type  |  Numeric  |
|  fBodyAccStdY  |  fBodyAccStdY Type  |  Numeric  |
|  fBodyAccStdZ  |  fBodyAccStdZ Type  |  Numeric  |
|  fBodyAccMeanFreqX  |  fBodyAccMeanFreqX Type  |  Numeric  |
|  fBodyAccMeanFreqY  |  fBodyAccMeanFreqY Type  |  Numeric  |
|  fBodyAccMeanFreqZ  |  fBodyAccMeanFreqZ Type  |  Numeric  |
|  fBodyAccJerkMeanX  |  fBodyAccJerkMeanX Type  |  Numeric  |
|  fBodyAccJerkMeanY  |  fBodyAccJerkMeanY Type  |  Numeric  |
|  fBodyAccJerkMeanZ  |  fBodyAccJerkMeanZ Type  |  Numeric  |
|  fBodyAccJerkStdX  |  fBodyAccJerkStdX Type  |  Numeric  |
|  fBodyAccJerkStdY  |  fBodyAccJerkStdY Type  |  Numeric  |
|  fBodyAccJerkStdZ  |  fBodyAccJerkStdZ Type  |  Numeric  |
|  fBodyAccJerkMeanFreqX  |  fBodyAccJerkMeanFreqX Type  |  Numeric  |
|  fBodyAccJerkMeanFreqY  |  fBodyAccJerkMeanFreqY Type  |  Numeric  |
|  fBodyAccJerkMeanFreqZ  |  fBodyAccJerkMeanFreqZ Type  |  Numeric  |
|  fBodyGyroMeanX  |  fBodyGyroMeanX Type  |  Numeric  |
|  fBodyGyroMeanY  |  fBodyGyroMeanY Type  |  Numeric  |
|  fBodyGyroMeanZ  |  fBodyGyroMeanZ Type  |  Numeric  |
|  fBodyGyroStdX  |  fBodyGyroStdX Type  |  Numeric  |
|  fBodyGyroStdY  |  fBodyGyroStdY Type  |  Numeric  |
|  fBodyGyroStdZ  |  fBodyGyroStdZ Type  |  Numeric  |
|  fBodyGyroMeanFreqX  |  fBodyGyroMeanFreqX Type  |  Numeric  |
|  fBodyGyroMeanFreqY  |  fBodyGyroMeanFreqY Type  |  Numeric  |
|  fBodyGyroMeanFreqZ  |  fBodyGyroMeanFreqZ Type  |  Numeric  |
|  fBodyAccMagMean  |  fBodyAccMagMean Type  |  Numeric  |
|  fBodyAccMagStd  |  fBodyAccMagStd Type  |  Numeric  |
|  fBodyAccMagMeanFreq  |  fBodyAccMagMeanFreq Type  |  Numeric  |
|  fBodyBodyAccJerkMagMean  |  fBodyBodyAccJerkMagMean Type  |  Numeric  |
|  fBodyBodyAccJerkMagStd  |  fBodyBodyAccJerkMagStd Type  |  Numeric  |
|  fBodyBodyAccJerkMagMeanFreq  |  fBodyBodyAccJerkMagMeanFreq Type  |  Numeric  |
|  fBodyBodyGyroMagMean  |  fBodyBodyGyroMagMean Type  |  Numeric  |
|  fBodyBodyGyroMagStd  |  fBodyBodyGyroMagStd Type  |  Numeric  |
|  fBodyBodyGyroMagMeanFreq  |  fBodyBodyGyroMagMeanFreq Type  |  Numeric  |
|  fBodyBodyGyroJerkMagMean  |  fBodyBodyGyroJerkMagMean Type  |  Numeric  |
|  fBodyBodyGyroJerkMagStd  |  fBodyBodyGyroJerkMagStd Type  |  Numeric  |
|  fBodyBodyGyroJerkMagMeanFreq  |  fBodyBodyGyroJerkMagMeanFreq Type  |  Numeric  |



Notes
=========================================
- The txt file is comma separated and includes the output as a submission of Course Project

For more information about this dataset contact: gdsandha@gmail.com

License
=========================================
GPL License

