# Smartphone Accelerometer Data Code Book

## Raw data
The data comes from experiments of 30 volunteers undergoing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone. The embedded accelerometer and gyroscope captured linear acceleration and angular velocity on each axis (X, Y, Z).

Full details of the original data may be found in the README at the [UCI repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Transformation
The table contains only the mean and standard deviation of each measurement. These are grouped by activity and subject with the average values tabulated.

Steps taken in the script (`run_analysis.R`):

* Read in original data as data frames and add column names.
* Combine all dataframes into one dataframe (`rbind` and `cbind`).
* Discard variables which aren't mean or standard derviation.
* Add descriptive activity names (`left_join`).
* Group observations by subject and activity (`group_by` and `summarise_each`).
* Clean up column names to make formatting uniform (`gsub`) - use camelcase, consistent word ordering and no abbreviations.
* Output table.

## Variables
The first column identifies the subject (`subjectID`), the second identifies the activity (`activityName`).

The remaining 66 columns are the average measurement corresponding to that subject and activity. 

Key measurements are given in the following table. Full details can be found in the original dataset. Units from accelerometer are 'g's; units from gyroscope are rad/sec - both normalised to lie in the range [-1, 1].

|        Variable       | Description                                         |
|:---------------------:|-----------------------------------------------------|
|    BodyAccelometer    | Accelerometer measurement due to body movement      |
|   GravityAccelometer  | Accelerometer measurement due to gravity            |
| BodyAccelerometerJerk | Jerk of body acceleration measured by accelerometer |
|     BodyGyroscope     | Gyroscope measurement due to body movement          |
|      BodyGyroscopeJerk     | Jerk of angular movement measured by gyroscope      |

Column tables are made up of the above plus the following adjustments. 

* Prefix 't' denotes time domain signal, prefix 'f' denotes frequency domain signal. 
* Suffices 'X', 'Y', 'Z' denote measurements in each of the spacial directions, while 'Magnitude' denotes the Euclidean norm of the relevant vector.
* Suffices 'Mean' and 'StandardDeviation' denote whether the variable is the mean or standard deviation of the measurement.