README.md File for Getting and Cleaning Data Course Project for Coursera

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to below represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data from the links below were obtained.  Please see the reference below for this data set[1]:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data for the project were obtained from the following address:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The above links provide the original dataset, called "Human Activity Recognition Using Smartphones Dataset" Version 1.0, which is downloaded and manipulated in the analysis for this course project.  This original dataset is described in detail in the "README.txt" file which is downloaded with the datasets from the above website. The "features-info.txt" file which can also be downloaded with the datasets shows information about the variables used on the feature vector, while "features.txt" lists all of the features. 

The files included in this repo include the following:
=====================================================
- 'README.md'
- 'run_analysis.R' :  An R script which does the following:
	1.	Merges the training and the test sets from the above source to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.  
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive variable names.  
	5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- 'CodeBook.md':  Modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated.
- 'tidydata.txt' :  A text file containing the data output from the run_analysis.R script.


License:
========
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.