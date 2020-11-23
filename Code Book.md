INTRODUCTION
This document is the code book for the Getting and Cleaning Data Course Project described in the README.md file in the repository that this document is found in.  Using an R script called run-analysis.R, training and test data sets from the Human Activity Recognition Using Smartphones Dataset Version 1.0 **[1] (which can be obtained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) were merged into one data set as directed in the project instructions as outlined below:
	1.	Merges the training and the test sets from the above source to create one data set.
	2.	Extracts only the measurements on the mean and standard deviation for each measurement.  
	3.	Uses descriptive activity names to name the activities in the data set
	4.	Appropriately labels the data set with descriptive variable names.  
	5.	From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

SUMMARY
Names of the original dataset variables are described in this document below in the FEATURE SELECTION section and were changed from their original format by eliminating the "()" symbols in the variable names to make the variables easier to read and type.  The variable names were not made longer to spell out their meaning because it was thought that the variables themselves were already long enough.  

A quick explanation of the abbreviations in the variable names is as follows.  The "t" in variable names denotes time, and the "f" indicates frequency domain signals.  "Acc" denotes accelerometer, "Gyro" denotes gyroscope, and "Mag" denotes magnitude.

It was assumed that any variable with the fragment "mean" or "std" in the original FEATURE SELECTION data set (see below) were to be subsetted out of this merged set per item 2 above.  The mean or average of this subsetted data set was calculated and outputted into a file called tidydata.txt which has 180 rows and 88 columns.  The phrase "Mean-" was added to the beginning of each of the variables where the mean was taken of the Subject/Activity combination for that variable.

The first column "Subject" is an integer from 1-30 which indicates the number of the test subject.  The second column "Activity" is of type character and lists one of six activities that each subject performed.  These activities are:  Walking, Walking-Upstairs, Walking-Downstairs, Sitting, Standing, and Laying.  The other 86 columns, which represent the mean of the mean or std variables and ranges from -1 to 1, are numeric and have been normalized.  The column name for each column number has been listed below:
 [1] Subject                                  
 [2] Activity                                 
 [3] Mean-tBodyAcc-mean-X                     
 [4] Mean-tBodyAcc-mean-Y                     
 [5] Mean-tBodyAcc-mean-Z                     
 [6] Mean-tBodyAcc-std-X                      
 [7] Mean-tBodyAcc-std-Y                      
 [8] Mean-tBodyAcc-std-Z                      
 [9] Mean-tGravityAcc-mean-X                  
[10] Mean-tGravityAcc-mean-Y                  
[11] Mean-tGravityAcc-mean-Z                  
[12] Mean-tGravityAcc-std-X                   
[13] Mean-tGravityAcc-std-Y                   
[14] Mean-tGravityAcc-std-Z                   
[15] Mean-tBodyAccJerk-mean-X                 
[16] Mean-tBodyAccJerk-mean-Y                 
[17] Mean-tBodyAccJerk-mean-Z                 
[18] Mean-tBodyAccJerk-std-X                  
[19] Mean-tBodyAccJerk-std-Y                  
[20] Mean-tBodyAccJerk-std-Z                  
[21] Mean-tBodyGyro-mean-X                    
[22] Mean-tBodyGyro-mean-Y                    
[23] Mean-tBodyGyro-mean-Z                    
[24] Mean-tBodyGyro-std-X                     
[25] Mean-tBodyGyro-std-Y                     
[26] Mean-tBodyGyro-std-Z                     
[27] Mean-tBodyGyroJerk-mean-X                
[28] Mean-tBodyGyroJerk-mean-Y                
[29] Mean-tBodyGyroJerk-mean-Z                
[30] Mean-tBodyGyroJerk-std-X                 
[31] Mean-tBodyGyroJerk-std-Y                 
[32] Mean-tBodyGyroJerk-std-Z                 
[33] Mean-tBodyAccMag-mean                    
[34] Mean-tBodyAccMag-std                     
[35] Mean-tGravityAccMag-mean                 
[36] Mean-tGravityAccMag-std                  
[37] Mean-tBodyAccJerkMag-mean                
[38] Mean-tBodyAccJerkMag-std                 
[39] Mean-tBodyGyroMag-mean                   
[40] Mean-tBodyGyroMag-std                    
[41] Mean-tBodyGyroJerkMag-mean               
[42] Mean-tBodyGyroJerkMag-std                
[43] Mean-fBodyAcc-mean-X                     
[44] Mean-fBodyAcc-mean-Y                     
[45] Mean-fBodyAcc-mean-Z                     
[46] Mean-fBodyAcc-std-X                      
[47] Mean-fBodyAcc-std-Y                      
[48] Mean-fBodyAcc-std-Z                      
[49] Mean-fBodyAcc-meanFreq-X                 
[50] Mean-fBodyAcc-meanFreq-Y                 
[51] Mean-fBodyAcc-meanFreq-Z                 
[52] Mean-fBodyAccJerk-mean-X                 
[53] Mean-fBodyAccJerk-mean-Y                 
[54] Mean-fBodyAccJerk-mean-Z                 
[55] Mean-fBodyAccJerk-std-X                  
[56] Mean-fBodyAccJerk-std-Y                  
[57] Mean-fBodyAccJerk-std-Z                  
[58] Mean-fBodyAccJerk-meanFreq-X             
[59] Mean-fBodyAccJerk-meanFreq-Y             
[60] Mean-fBodyAccJerk-meanFreq-Z             
[61] Mean-fBodyGyro-mean-X                    
[62] Mean-fBodyGyro-mean-Y                    
[63] Mean-fBodyGyro-mean-Z                    
[64] Mean-fBodyGyro-std-X                     
[65] Mean-fBodyGyro-std-Y                     
[66] Mean-fBodyGyro-std-Z                     
[67] Mean-fBodyGyro-meanFreq-X                
[68] Mean-fBodyGyro-meanFreq-Y                
[69] Mean-fBodyGyro-meanFreq-Z                
[70] Mean-fBodyAccMag-mean                    
[71] Mean-fBodyAccMag-std                     
[72] Mean-fBodyAccMag-meanFreq                
[73] Mean-fBodyBodyAccJerkMag-mean            
[74] Mean-fBodyBodyAccJerkMag-std             
[75] Mean-fBodyBodyAccJerkMag-meanFreq        
[76] Mean-fBodyBodyGyroMag-mean               
[77] Mean-fBodyBodyGyroMag-std                
[78] Mean-fBodyBodyGyroMag-meanFreq           
[79] Mean-fBodyBodyGyroJerkMag-mean           
[80] Mean-fBodyBodyGyroJerkMag-std            
[81] Mean-fBodyBodyGyroJerkMag-meanFreq       
[82] Mean-angle(tBodyAccMean,gravity)         
[83] Mean-angle(tBodyAccJerkMean),gravityMean)
[84] Mean-angle(tBodyGyroMean,gravityMean)    
[85] Mean-angle(tBodyGyroJerkMean,gravityMean)
[86] Mean-angle(X,gravityMean)                
[87] Mean-angle(Y,gravityMean)                
[88] Mean-angle(Z,gravityMean)  

HISTORY OF ORIGINAL DATA SET-from README.txt from original data files
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the scientists collecting the data captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' from original dataset described in README.md file in this repo for more details. 

FEATURE SELECTION OF ORIGINAL DATA SET - from features-info.txt from original data files
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' from the original data set.

REFERENCE
**[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012