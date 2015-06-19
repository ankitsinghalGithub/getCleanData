==================================================================
Peer Assessments /Getting and Cleaning Data Course Project
==================================================================

# Code Book
============

### Transformation or steps in creating tidy data
=============================================
*loading required packages
* STEP 1: Merges the training and the test sets to create one data set
          - read.table      ---  read data into data frames
          - names()         --- add column name
          - cbind(),rbind   --- combine files into one dataset
*STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.
          - grepl           --- to extract the relevants columns
          - mergeData       --- merging data set
*STEP 3: Uses descriptive activity names to name the activities in the data set.
*STEP 4: Appropriately labels the data set with descriptive activity names.
          - factor          --- creating factor for "activity"
*STEP 5: Creates a second, independent tidy data set with the average of each variable          for each activity and each subject.
          - melt            --- melting the dataset
          - dcast           --- reshaping the datafame
          - write.table     --- writing data into tidy.txt file.


### Variables
==============

subjectId

        --Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
        
activity

        --Activity- total activity 6
        "Walking"-
        "Walking Upstairs" - 
        "Walking Downstairs"-  
        "Sitting" -
        "Standing"- 
        "Laying -
        
mean and Standard divation columns
        --measurements on the mean and standard deviation for each measurement.
        --tBodyAcc  - total_acc: The acceleration signal from the smartphone       
                      accelerometer X axis in standard gravity units 'g'.
        --bodyAcc   - The body acceleration signal obtained by subtracting the gravity                       from the total acceleration. 
        --bodyGyro  - The angular velocity vector measured by the gyroscope. The units                       are radians/second. 

        --mean and std of ACC 
          "tBodyAcc-mean()-X"          
          "tBodyAcc-mean()-Y"
          "tBodyAcc-mean()-Z"
          "tBodyAcc-std()-X"           
          "tBodyAcc-std()-Y"   
          "tBodyAcc-std()-Z"   
          "tGravityAcc-mean()-X"       
          "tGravityAcc-mean()-Y"    
          "tGravityAcc-mean()-Z"       
          "tGravityAcc-std()-X"        
          "tGravityAcc-std()-Y"   
          "tGravityAcc-std()-Z"        
          "tBodyAccJerk-mean()-X"      
          "tBodyAccJerk-mean()-Y" 
          "tBodyAccJerk-mean()-Z"      
          "tBodyAccJerk-std()-X"       
          "tBodyAccJerk-std()-Y" 
          "tBodyAccJerk-std()-Z"      
          "tBodyGyro-mean()-X"         
          "tBodyGyro-mean()-Y"   
          "tBodyGyro-mean()-Z"        
          "tBodyGyro-std()-X"          
          "tBodyGyro-std()-Y"    
          "tBodyGyro-std()-Z"         
          "tBodyGyroJerk-mean()-X"     
          "tBodyGyroJerk-mean()-Y"
          "tBodyGyroJerk-mean()-Z"    
          "tBodyGyroJerk-std()-X"      
          "tBodyGyroJerk-std()-Y" 
          "tBodyGyroJerk-std()-Z"      
          "tBodyAccMag-mean()"         
          "tBodyAccMag-std()"    
          "tGravityAccMag-mean()"     
          "tGravityAccMag-std()"       
          "tBodyAccJerkMag-mean()"
          "tBodyAccJerkMag-std()"      
          "tBodyGyroMag-mean()"        
          "tBodyGyroMag-std()"    
          "tBodyGyroJerkMag-mean()"    
          "tBodyGyroJerkMag-std()"     
          "fBodyAcc-mean()-X"     
          "fBodyAcc-mean()-Y"          
          "fBodyAcc-mean()-Z"          
          "fBodyAcc-std()-X"      
          "fBodyAcc-std()-Y"        
          "fBodyAcc-std()-Z"           
          "fBodyAccJerk-mean()-X"  
          "fBodyAccJerk-mean()-Y"     
          "fBodyAccJerk-mean()-Z"      
          "fBodyAccJerk-std()-X"   
          "fBodyAccJerk-std()-Y"        
          "fBodyAccJerk-std()-Z"       
          "fBodyGyro-mean()-X"     
          "fBodyGyro-mean()-Y"          
          "fBodyGyro-mean()-Z"         
          "fBodyGyro-std()-X"     
          "fBodyGyro-std()-Y"          
          "fBodyGyro-std()-Z"          
          "fBodyAccMag-mean()"    
          "fBodyAccMag-std()"         
          "fBodyBodyAccJerkMag-mean()" 
          "fBodyBodyAccJerkMag-std()"
          "fBodyBodyGyroMag-mean()"    
          "fBodyBodyGyroMag-std()"     
          "fBodyBodyGyroJerkMag-mean()"
          "fBodyBodyGyroJerkMag-std()"