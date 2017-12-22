## Week4 Assignment - Course Project
Data Science - Getting and Cleaning Data Course Project

This repo was created as the part of course project for the Getting and Cleaning Data course. It contains the R script which can be used to analyze Human Activity Recognition dataset and create a tidy dataset. 

### Requirements and Solutions
Requirement 1. Merges the training and the test sets to create one data set

Solution: The script merges the training ("X-train.txt") and test ("X_test.txt") data sets to create one data set that also includes subject and activity.  All the columns have been renamed. Descriptive activity names have been used to name the activities in the data set.
1. Join y_test data set with activity data set and rename the columns
2. Join y_train data set with activity data set and rename the columns
3. Rename columns in the subject_test data set and subject_train data set
4. Add activity column with descriptive names (joined y_* data sets) in subject_test and subject_train data sets and create two interim data sets (subject activity test and train)
5. Combine X_test and the interim test data by columns, and get interim x_test data set 
6. Combine X_train and the interim train data by columns, and get interim x_train data set
7. Combine the interim x_test and x_train data sets by rows and rename the columns

Requirement 2. Extracts only the measurements on the mean and standard deviation for each measurement

Solution: It searches the mean and standard deviation for each measurement. It extracts the columns that contain mean() or std() from merged data set and remain the subject and activity columns. 
Requirement 3. Uses descriptive activity names to name the activities in the data set
Solution: The script uses descriptive activity names to name the activities in the data set. It has been finished before merging train and test data sets.

Requirement 4. Appropriately labels the data set with descriptive variable names

Solution: The script labels measurement column names with descriptive names. Such as: replace Acc with Acceleration, Gyro with Gyroscope.

Requirement 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

Solution: Finally, it creates an independent tidy data set with the average of each variable for each activity and each subject based on the previous renamed data set. Ddply function has been applied to calculate the mean for each subset. 

### Running the Script
Source the file in R will cause R to accept its input from the file. It will automatically run the program, download the data set, perform the analysis, tidy the data and write the tidy data set into a txt file.  
   
	source("run_analysis.R")
