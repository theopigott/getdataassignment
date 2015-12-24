# Smartphone Accelerometer Data Code Book

## Raw data
The data comes from experiments of 30 volunteers undergoing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone. The embedded accelerometer captured linear acceleration and angular velocity on each axis (X, Y, Z).

Further details may be found in the README from the original data at the [UCI repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Transformation
The table contains only the mean and standard deviation of each measurement. These are grouped by activity and subject with the average values tabulated.

## Variables
The first two columns identify the observation, giving the name of the activity (`activity.Name`) and an identifier for the subject (`subject.ID`).

The remaining 66 columns are the average measurement corresponding to that subject and activity.

Naming conventions are as in the original dataset: Prefix 't' denotes time domain signal, prefix 'f' denotes frequency domain signal. 'mean' and 'std' denote the mean and standard derviation respectively. Suffices 'X', 'Y', 'Z' denote each of the spacial axes, whereas 'Mag' denotes the magnitude of the 3d signal (under the Euclidian norm). 

See original dataset for details of each measurement.

Units for acceleration are 'g's; units from gyroscore are rad/seg.

The full list of the 66 variables is as follows:

|       Variable Name       |
|:-------------------------:|
|      tBodyAcc.mean.X      |
|      tBodyAcc.mean.Y      |
|      tBodyAcc.mean.Z      |
|       tBodyAcc.std.X      |
|       tBodyAcc.std.Y      |
|       tBodyAcc.std.Z      |
|     tGravityAcc.mean.X    |
|     tGravityAcc.mean.Y    |
|     tGravityAcc.mean.Z    |
|     tGravityAcc.std.X     |
|     tGravityAcc.std.Y     |
|     tGravityAcc.std.Z     |
|    tBodyAccJerk.mean.X    |
|    tBodyAccJerk.mean.Y    |
|    tBodyAccJerk.mean.Z    |
|     tBodyAccJerk.std.X    |
|     tBodyAccJerk.std.Y    |
|     tBodyAccJerk.std.Z    |
|      tBodyGyro.mean.X     |
|      tBodyGyro.mean.Y     |
|      tBodyGyro.mean.Z     |
|      tBodyGyro.std.X      |
|      tBodyGyro.std.Y      |
|      tBodyGyro.std.Z      |
|    tBodyGyroJerk.mean.X   |
|    tBodyGyroJerk.mean.Y   |
|    tBodyGyroJerk.mean.Z   |
|    tBodyGyroJerk.std.X    |
|    tBodyGyroJerk.std.Y    |
|    tBodyGyroJerk.std.Z    |
|      tBodyAccMag.mean     |
|      tBodyAccMag.std      |
|    tGravityAccMag.mean    |
|     tGravityAccMag.std    |
|    tBodyAccJerkMag.mean   |
|    tBodyAccJerkMag.std    |
|     tBodyGyroMag.mean     |
|      tBodyGyroMag.std     |
|   tBodyGyroJerkMag.mean   |
|    tBodyGyroJerkMag.std   |
|      fBodyAcc.mean.X      |
|      fBodyAcc.mean.Y      |
|      fBodyAcc.mean.Z      |
|       fBodyAcc.std.X      |
|       fBodyAcc.std.Y      |
|       fBodyAcc.std.Z      |
|    fBodyAccJerk.mean.X    |
|    fBodyAccJerk.mean.Y    |
|    fBodyAccJerk.mean.Z    |
|     fBodyAccJerk.std.X    |
|     fBodyAccJerk.std.Y    |
|     fBodyAccJerk.std.Z    |
|      fBodyGyro.mean.X     |
|      fBodyGyro.mean.Y     |
|      fBodyGyro.mean.Z     |
|      fBodyGyro.std.X      |
|      fBodyGyro.std.Y      |
|      fBodyGyro.std.Z      |
|      fBodyAccMag.mean     |
|      fBodyAccMag.std      |
|  fBodyBodyAccJerkMag.mean |
|  fBodyBodyAccJerkMag.std  |
|   fBodyBodyGyroMag.mean   |
|    fBodyBodyGyroMag.std   |
| fBodyBodyGyroJerkMag.mean |
|  fBodyBodyGyroJerkMag.std |