library(dplyr)
library(plyr)

##download data and upzip it to the working directory
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="./dataset.zip")
unzip("./dataset.zip", exdir="./data")

##read train and test data sets
x_test<-read.delim("./data/UCI HAR Dataset/test/X_test.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)
x_train<-read.delim("./data/UCI HAR Dataset/train/X_train.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)

##read train and test data labels
y_test<-read.delim("./data/UCI HAR Dataset/test/y_test.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)
y_train<-read.delim("./data/UCI HAR Dataset/train/y_train.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)

##read subject train and test data sets
subj_test<-read.delim("./data/UCI HAR Dataset/test/subject_test.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)
subj_train<-read.delim("./data/UCI HAR Dataset/train/subject_train.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)

##read activity and features data sets
activity<-read.delim("./data/UCI HAR Dataset/activity_labels.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)
features<-read.delim("./data/UCI HAR Dataset/features.txt",header= FALSE, sep="", dec=".", fill=FALSE, strip.white=TRUE)

##use descriptive activity names to name the activity
##merge test label data with activity data, and perserves the row order of the first data frame
join_ytest<-inner_join(y_test, activity)
##rename the columns
colnames(join_ytest)<-c("activityID","activity")
##merge train label data with activity data, and perserves the row order of the first data frame
join_ytrain<-inner_join(y_train, activity) 
##rename the columns
colnames(join_ytrain)<-c("activityID","activity")
##rename the columns in the subject test and train data sets
colnames(subj_test)<-"subject"  
colnames(subj_train)<-"subject"

##add activity column in subject train data set
subjact_train<-mutate(subj_train, activity=join_ytrain$activity) 
##combine subject, activity with x train data set
mergex_train <-cbind(subjact_train, x_train)  
##add activity column in subject test data set
subjact_test <-mutate(subj_test, activity=join_ytest$activity) 
##combine subject, activity with x test data set
mergex_test<-cbind(subjact_test, x_test)   

##merge the training and the test data sets
mergeall<-rbind(mergex_train, mergex_test)
##rename the measurement columns with the values in the feature data set
colnames(mergeall)[3:563]<-as.character(features$V2)

##search mean() or std() in the column names of mergeall data frame
y<-grep("mean\\(\\)|std\\(\\)",colnames(mergeall)) 
##subset subject, activity, selected mean and standard deviation columns to a new data frame
mergesel<-mergeall[, c(1,2,y)]

##use desciptive feature names to label the variables the data set
colnames(mergesel)<-gsub("Acc","Acceleration",colnames(mergesel))
colnames(mergesel)<-gsub("Gyro","Gyroscope",colnames(mergesel))
colnames(mergesel)<-gsub("Mag","Magnitude",colnames(mergesel))
colnames(mergesel)<-gsub("^t","Time",colnames(mergesel))
colnames(mergesel)<-gsub("^f","Frequency",colnames(mergesel))
colnames(mergesel)<-gsub("std","StandardDeviation",colnames(mergesel))
colnames(mergesel)<-gsub("mean","Mean",colnames(mergesel))
colnames(mergesel)<-gsub("BodyBody","Body",colnames(mergesel))
colnames(mergesel)<-gsub("\\(\\)","",colnames(mergesel))

##create a tidy data set with average of each variable for each activity and each subject
colnumber<-ncol(mergesel)
final<-ddply(mergesel,c("subject","activity"), function(x) colMeans(x[,3:colnumber]))
write.table(final, "./tidydata.txt", row.name=FALSE)


