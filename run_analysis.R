##  This R script does the following.
##  1.	Merges the training and the test sets to create one data set.
##  2.	Extracts only the measurements on the mean and standard deviation for 
##  each measurement.
##  3.	Uses descriptive activity names to name the activities in the data set
##  4.	Appropriately labels the data set with descriptive variable names.
##  5.	From the data set in step 4, creates a second, independent tidy data set 
##  with the average of each variable for each activity and each subject.


url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(url, './getdata_projectfiles_UCI HAR Dataset.zip')
unzip('./getdata_projectfiles_UCI HAR Dataset.zip')

##  Pulls variable names from features.txt file.
xcoldesc <- read.table("./UCI HAR Dataset/features.txt", sep="")
vector1 <- gsub("\\(\\)", "", xcoldesc$V2)

##  Reads in values from subject_train.txt and y_train.text which represent
##  the subject number and the activity, respectively.
##  Reads in values from X_train.txt and adds column names from features.txt.
##  Column binds these 3 data sets together.

dsubtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt",  sep="")
colnames(dsubtrain) <- c("Subject")

dytrain <- read.table("./UCI HAR Dataset/train/y_train.txt",  sep="")
colnames(dytrain) <- c("Activity")

dxtrain <- read.table("./UCI HAR Dataset/train/X_train.txt",  sep="")
colnames(dxtrain) <-  vector1

train <- cbind(dsubtrain, dytrain, dxtrain)

##  Reads in values from subject_test.txt and y_test.text which represent
##  the subject number and the activity, respectively.
##  Reads in values from X_test.txt and adds column names from features.txt.
##  Column binds these 3 data sets together.

dsubtest = read.table("./UCI HAR Dataset/test/subject_test.txt",  sep="")
colnames(dsubtest) <- c("Subject")

dytest = read.table("./UCI HAR Dataset/test/y_test.txt",  sep="")
colnames(dytest) <- c("Activity")

dxtest = read.table("./UCI HAR Dataset/test/X_test.txt",  sep="")
colnames(dxtest) <-  vector1

test <- cbind(dsubtest, dytest, dxtest)

##  Combines train and test data sets.

combined <- rbind(train, test)

##  Replaces activity numbers with Activities found in activity_labels.txt 
##  file and slightly modified.
for (i in 1:nrow(combined)){
  if(combined$Activity[i] == 1){
    combined$Activity[i] <- c("Walking")
  } else if(combined$Activity[i] == 2){
    combined$Activity[i] <- c("Walking-Upstairs")
  } else if(combined$Activity[i] == 3){
    combined$Activity[i] <- c("Walking-Downstairs")
  } else if(combined$Activity[i] == 4){
    combined$Activity[i] <- c("Sitting")
  } else if(combined$Activity[i] == 5){
    combined$Activity[i] <- c("Standing")
  } else if(combined$Activity[i] == 6){
    combined$Activity[i] <- c("Laying")
  }
}


##  Extracts only the measurements on the mean and standard deviation for 
##  each measurement.

index1 <- grepl("Subject|Activity|mean|std", colnames(combined), ignore.case = TRUE)
subsetted <- combined[index1]

##  Create a second, independent tidy data set with the average of each 
##  variable for each activity and each subject.

library(dplyr)
sorted <- arrange(subsetted, Subject, Activity)

avgvalues <- sorted %>% group_by(Subject, Activity) %>% summarise_all(mean)

initialheader <- colnames(avgvalues)
finalheader <- as.vector(initialheader)
for (j in 3:length(initialheader)){
  finalheader[j] <- paste0("Mean-", initialheader[j])
}
colnames(avgvalues) <- finalheader
View(avgvalues)

write.table(avgvalues, file = "./tidydata.txt", row.names = FALSE)