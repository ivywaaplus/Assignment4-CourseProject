## CodeBook - Getting and Cleaning Data Course Project

### Subject

An identifier of the subject who carried out the experiment. Its range is from 1 to 30.

### Activity

It's described by activity name and includes six activities: 
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### Measurement Selections

Measurements are normalized and bounded within [-1,1]. The measurements selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcceleration-XYZ and TimeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (TimeBodyAcceleration-XYZ and TimeGyroscopeAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals: 
<br/>TimeBodyAccelerationJerk-XYZ
<br/>TimeBodyGyroscopeJerk-XYZ

The magnitude of these three-dimensional signals were calculated using the Euclidean norm:
<br/>TimeBodyAccelerationMagnitude
<br/>TimeGravityAccelerationMagnitude
<br/>TimeBodyAccelerationJerkMagnitude
<br/>TimeBodyGyroscopeMagnitude
<br/>TimeBodyGyroscopeJerkMagnitude

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing:
<br/>FrequencyBodyAcceleration-XYZ
<br/>FrequencyBodyAccelerationJerk-XYZ
<br/>FrequencyBodyGyroscope-XYZ
<br/>FrequencyBodyAccelerationJerkMagnitude
<br/>FrequencyBodyGyroscopeMagnitude
<br/>FrequencyBodyGyroscopeJerkMagnitude

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
<br/>TimeBodyAcceleration-XYZ
<br/>TimeGravityAcceleration-XYZ
<br/>TimeBodyAccelerationJerk-XYZ
<br/>TimeBodyGyroscope-XYZ
<br/>TimeBodyGyroscopeJerk-XYZ
<br/>TimeBodyAccelerationMagnitude
<br/>TimeGravityAccelerationMagnitude
<br/>TimeBodyAccelerationJerkMagnitude
<br/>TimeBodyGyroscopeMagnitude
<br/>TimeBodyGyroscopeJerkMagnitude
<br/>FrequencyBodyAcceleration-XYZ
<br/>FrequencyBodyAccelerationJerk-XYZ
<br/>FrequencyBodyGyroscope-XYZ
<br/>FrequencyBodyAccelerationMagnitude
<br/>FrequencyBodyAccelerationJerkMagnitude
<br/>FrequencyBodyGyroscopeMagnitude
<br/>FrequencyBodyGyroscopeJerkMagnitude

### The Complete Set of Measurements

The tidy data set contains 66 measurements that cover only the mean and standard deviation for the measurements in the original data set. They are normalized and bounded within [-1,1] and listed as follows.
* TimeBodyAcceleration-Mean-X
* TimeBodyAcceleration-Mean-Y
* TimeBodyAcceleration-Mean-Z
* TimeBodyAcceleration-StandardDeviation-X
* TimeBodyAcceleration-StandardDeviation-Y
* TimeBodyAcceleration-StandardDeviation-Z
* TimeGravityAcceleration-Mean-X
* TimeGravityAcceleration-Mean-Y
* TimeGravityAcceleration-Mean-Z
* TimeGravityAcceleration-StandardDeviation-X
* TimeGravityAcceleration-StandardDeviation-Y
* TimeGravityAcceleration-StandardDeviation-Z
* TimeBodyAccelerationJerk-Mean-X
* TimeBodyAccelerationJerk-Mean-Y
* TimeBodyAccelerationJerk-Mean-Z
* TimeBodyAccelerationJerk-StandardDeviation-X
* TimeBodyAccelerationJerk-StandardDeviation-Y
* TimeBodyAccelerationJerk-StandardDeviation-Z
* TimeBodyGyroscope-Mean-X
* TimeBodyGyroscope-Mean-Y
* TimeBodyGyroscope-Mean-Z
* TimeBodyGyroscope-StandardDeviation-X
* TimeBodyGyroscope-StandardDeviation-Y
* TimeBodyGyroscope-StandardDeviation-Z
* TimeBodyGyroscopeJerk-Mean-X
* TimeBodyGyroscopeJerk-Mean-Y
* TimeBodyGyroscopeJerk-Mean-Z
* TimeBodyGyroscopeJerk-StandardDeviation-X
* TimeBodyGyroscopeJerk-StandardDeviation-Y
* TimeBodyGyroscopeJerk-StandardDeviation-Z
* TimeBodyAccelerationMagnitude-Mean
* TimeBodyAccelerationMagnitude-StandardDeviation
* TimeGravityAccelerationMagnitude-Mean
* TimeGravityAccelerationMagnitude-StandardDeviation
* TimeBodyAccelerationJerkMagnitude-Mean
* TimeBodyAccelerationJerkMagnitude-StandardDeviation
* TimeBodyGyroscopeMagnitude-Mean
* TimeBodyGyroscopeMagnitude-StandardDeviation
* TimeBodyGyroscopeJerkMagnitude-Mean
* TimeBodyGyroscopeJerkMagnitude-StandardDeviation
* FrequencyBodyAcceleration-Mean-X
* FrequencyBodyAcceleration-Mean-Y
* FrequencyBodyAcceleration-Mean-Z
* FrequencyBodyAcceleration-StandardDeviation-X
* FrequencyBodyAcceleration-StandardDeviation-Y
* FrequencyBodyAcceleration-StandardDeviation-Z
* FrequencyBodyAccelerationJerk-Mean-X
* FrequencyBodyAccelerationJerk-Mean-Y
* FrequencyBodyAccelerationJerk-Mean-Z
* FrequencyBodyAccelerationJerk-StandardDeviation-X
* FrequencyBodyAccelerationJerk-StandardDeviation-Y
* FrequencyBodyAccelerationJerk-StandardDeviation-Z
* FrequencyBodyGyroscope-Mean-X
* FrequencyBodyGyroscope-Mean-Y
* FrequencyBodyGyroscope-Mean-Z
* FrequencyBodyGyroscope-StandardDeviation-X
* FrequencyBodyGyroscope-StandardDeviation-Y
* FrequencyBodyGyroscope-StandardDeviation-Z
* FrequencyBodyAccelerationMagnitude-Mean
* FrequencyBodyAccelerationMagnitude-StandardDeviation
* FrequencyBodyAccelerationJerkMagnitude-Mean
* FrequencyBodyAccelerationJerkMagnitude-StandardDeviation
* FrequencyBodyGyroscopeMagnitude-Mean
* FrequencyBodyGyroscopeMagnitude-StandardDeviation
* FrequencyBodyGyroscopeJerkMagnitude-Mean
* FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation


