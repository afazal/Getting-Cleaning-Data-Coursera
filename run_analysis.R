

# reading training data
subject_train <- read.table("F:/Coursera/Cleaning Data/UCI HAR Dataset/train/subject_train.txt")
value_train <- read.table("F:/Coursera/Cleaning Data/UCI HAR Dataset/train/X_train.txt")
train_act <- read.table("F:/Coursera/Cleaning Data/UCI HAR Dataset/train/y_train.txt")

# reading test data

subject_test <- read.table("F:/Coursera/Cleaning Data/UCI HAR Dataset/test/subject_test.txt")
value_test <- read.table("F:/Coursera/Cleaning Data/UCI HAR Dataset/test/X_test.txt")
test_act <- read.table("F:/Coursera/Cleaning Data/UCI HAR Dataset/test/y_test.txt")

features <- read.table(("F:/Coursera/Cleaning Data/UCI HAR Dataset/features.txt"), as.is = TRUE)



activities <- read.table(("F:/Coursera/Cleaning Data/UCI HAR Dataset/activity_labels.txt"), as.is = TRUE)

#assign names
colnames(activities) <- c("Id", "Label")






train_data <- cbind(subject_train,value_train,train_act)

test_data <- cbind(subject_test,value_test,test_act)

#combine the entire data together

completedata <- rbind(train_data,test_data)


#assign the column names to combined dataset
colnames(completedata) <- c("subject", features[, 2], "activity")


# determine columns of data set to keep based on column name
columnsToKeep <- grepl("mean|std|activity|subject", colnames(completedata))

#keep data in these columns only
completedata <- completedata[,columnsToKeep]




# get column names
completedatacols <- colnames(completedata)



# expand abbreviations and clean up names


completedatacols <- gsub("mean", "Mean", completedatacols)
completedatacols <- gsub("Freq", "Frequency", completedatacols)

completedatacols <- gsub("^f", "frequencyDomain", completedatacols)
completedatacols <- gsub("^t", "timeDomain", completedatacols)

completedatacols <- gsub("std", "StandardDeviation", completedatacols)

completedatacols <- gsub("Acc", "Accelerometer", completedatacols)
completedatacols <- gsub("Gyro", "Gyroscope", completedatacols)
completedatacols <- gsub("Mag", "Magnitude", completedatacols)

completedatacols <- gsub("[\\(\\)-/_#]", "", completedatacols)



# use new labels as column names
colnames(completedata) <- completedatacols
     

completedataMeans <- completedata %>% group_by(subject, activity) %>% summarise_all(funs(mean))


#write new tiddy data to test file
write.table(completedataMeans, "F:/Coursera/Cleaning Data/tidy_data.txt", row.names = FALSE, 
            quote = FALSE)