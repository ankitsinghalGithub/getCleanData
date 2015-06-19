#loading required packages

library(reshape2)

## STEP 1: Merges the training and the test sets to create one data set

# read data into data frames
subject_train <- read.table("./dataset/train/subject_train.txt")
subject_test <- read.table("./dataset/test/subject_test.txt")
featureNames <- read.table("./dataset/features.txt")
x_train <- read.table("./dataset/train/X_train.txt")
x_test <- read.table("./dataset/test/X_test.txt")
y_train <- read.table("./dataset/train/y_train.txt")
y_test <- read.table("./dataset/test/y_test.txt")

# add column name
names(subject_train) <- "subjectId"
names(subject_test) <- "subjectId"
names(x_train) <- featureNames$V2
names(x_test) <- featureNames$V2
names(y_train) <- "activity"
names(y_test) <- "activity"

# combine files into one dataset
mergeTrain <- cbind(subject_train, y_train, x_train)
mergeTest <- cbind(subject_test, y_test, x_test)
mergeData <- rbind(mergeTrain, mergeTest)

#STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.

# Extract columns contain "mean()" or "std()"
extractCols <- grepl("mean\\(\\)", names(mergeData)) | grepl("std\\(\\)", names(mergeData))
extractCols[1:2] <- TRUE
meanStdDataSet <- mergeData[, extractCols]


# STEP 3: Uses descriptive activity names to name the activities in the data set.
activityLabel <- c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")


# STEP 4: Appropriately labels the data set with descriptive activity names. 

meanStdDataSet$activity <- factor(meanStdDataSet$activity, labels=activityLabel)


## STEP 5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# create the tidy data set
meltedData <- melt(meanStdDataSet, id=c("subjectId","activity"))
tidyData <- dcast(meltedData, subjectId+activity ~ variable, mean)

# write the tidy data set to a file
write.table(tidyData, file="tidy.txt", row.names=FALSE, col.names = TRUE, sep="\t", quote=FALSE)