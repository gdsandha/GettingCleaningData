setwd("C:\\ENTER\\zzz\\R2015\\GettingAndCleaningData\\project\\UCI HAR Dataset")

################ PART 1 and 3 ######################
## PART 1 Merges the training and the test sets to create one data set
## PART 3 Uses descriptive activity names to name the activities in the data set

# clear the workspace
rm(list=ls())

# load data
d_varnames <- read.table("features.txt")
d_train <- read.table("train\\X_train.txt")
d_test <- read.table("test\\X_test.txt")

subject_train <- read.table("train\\subject_train.txt")
subject_test <- read.table("test\\subject_test.txt")

label_train <- read.table("train\\y_train.txt")
label_test <- read.table("test\\y_test.txt")
label_activity <- read.table("activity_labels.txt")

# Add the Subject information
d_train <- cbind(d_train, subject_train)
d_test <- cbind(d_test, subject_test)

# add the Labels
label_train <- merge(label_train,label_activity,by.x = "V1", by.y = "V1", all.x = TRUE)
label_test <- merge(label_test,label_activity,by.x = "V1", by.y = "V1", all.x = TRUE)
d_train <- cbind(d_train, label_train$V2)
d_test <- cbind(d_test, label_test$V2)

# apply the subject and variable names to test and train data set
names(d_train)<-d_varnames[,2]
names(d_test)<-d_varnames[,2]
names(d_train)[ncol(d_train)-1] <- "Subject"
names(d_test)[ncol(d_test)-1] <- "Subject"
names(d_train)[ncol(d_train)] <- "Activity"
names(d_test)[ncol(d_test)] <- "Activity"

# Add the identifier for data set type and merge the two raw data sets
d_train$DataSetType <- "Train"
d_test$DataSetType <- "Test"
d_mergedDataSet <- rbind(d_train, d_test)
d_mergedDataSet <- d_mergedDataSet[,c(ncol(d_mergedDataSet), 1:(ncol(d_mergedDataSet)-1))]

# clean workspace for unneeded objects
rm(d_test,d_train,subject_test,subject_train,label_activity,label_test,label_train)


################ PART 2 ######################
## PART 2 Extracts only the measurements on the mean and standard deviation for each measurement

d_selectedColumnsMean<-as.data.frame(grep("mean",d_varnames$V2))
d_selectedColumnsStd<-as.data.frame(grep("std",d_varnames$V2))

names(d_selectedColumnsStd)<-"V1"
names(d_selectedColumnsMean)<-"V1"
d_selectedColumns <- rbind(d_selectedColumnsMean,d_selectedColumnsStd)

# dereference by 1 column forward due to DataType as first column
d_selectedColumns$V1 <- d_selectedColumns$V1 + 1
d_selectedColumns <- sort(d_selectedColumns$V1, decreasing = FALSE)
d_selectedColumns <- as.data.frame(d_selectedColumns)

# add additional reference columns
additionalReferenceColumns <- as.data.frame(c(1, ncol(d_mergedDataSet)-1, ncol(d_mergedDataSet)))
names(additionalReferenceColumns) <- "V1"
names(d_selectedColumns) <- "V1"

# append additional reference columns to selected columns list
d_selectedColumns <- rbind(d_selectedColumns,additionalReferenceColumns)

# sort the list of selected columns
d_selectedColumns <- sort(d_selectedColumns$V1, decreasing = FALSE)
d_selectedColumns <- as.data.frame(d_selectedColumns)

# Only select the chosen columns from the merged dataset
library("dplyr")
d_mergedDataSetSmall <- select(d_mergedDataSet, d_selectedColumns$d_selectedColumns)

# Cleanup the workspace of extra objects
rm(list=ls(pattern = "selectedCol"))
rm(d_mergedDataSet, d_varnames, additionalReferenceColumns)


################ PART 4 ######################
## PART 4 Appropriately labels the data set with descriptive variable names

d_names <- as.data.frame(names(d_mergedDataSetSmall))
d_names <- gsub("-", "", d_names$`names(d_mergedDataSetSmall)`)
d_names <- gsub("\\)", "", d_names)
d_names <- gsub("mean", "Mean", d_names)
d_names <- gsub("std", "Std", d_names)

names(d_mergedDataSetSmall) <- d_names


################ PART 5 ######################
## PART 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

# Drop the first DataSetType column (Train/Test)  as it is not needed for summary
d_mergedDataSetSmall <- d_mergedDataSetSmall[,c(-1)]

# Summarize to Tidy Data Set
d_tidyDataSet<-d_mergedDataSetSmall %>% group_by(Activity,Subject) %>% summarise_each(funs(mean))

# Write out the results
write.table(d_tidyDataSet, "tidyDataSetOutputForSubmission.txt", sep=",", row.names = FALSE)


################ Generate Codebook ######################

library(memisc)
codebook(d_tidyDataSet)

