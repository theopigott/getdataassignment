library(dplyr)

# Read in raw data
testSubject <- read.table("data/test/subject_test.txt")
testX <- read.table("data/test/X_test.txt")
testY <- read.table("data/test/Y_test.txt")

trainSubject <- read.table("data/train/subject_train.txt")
trainX <- read.table("data/train/X_train.txt")
trainY <- read.table("data/train/Y_train.txt")

activityLabels <- read.table("data/activity_labels.txt")
features <- read.table("data/features.txt")

# Label columns
varNames <- make.names(features$V2)
names(testX) <- varNames
names(trainX) <- varNames

names(testY) <- "activityID"
names(trainY) <- "activityID"
names(testSubject) <- "subjectID"
names(trainSubject) <- "subjectID"

names(activityLabels) <- c("activityID", "activityName")

# Merge data into one table
test <- cbind(testX, testSubject, testY)
train <- cbind(trainX, trainSubject, trainY)
allData <- rbind(test, train)

# Keep only mean and standard deviation of each measurement
meanStdLogical <- grepl("mean\\(\\)|std\\(\\)", features$V2, ignore.case = TRUE)
meanStdInd <- which(meanStdLogical)
extractedData <- allData[,c(meanStdInd, 562, 563)]

# Add descriptive activity names
labelledData <- left_join(extractedData, activityLabels, by = "activityID")
labelledData <- select(labelledData, -(activityID))

# Summarise data
groupedData <- group_by(labelledData, subjectID, activityName)
tidyData <- summarise_each(groupedData, funs(mean))

# Clean column names
colnames(tidyData) <- gsub("\\.\\.", "", colnames(tidyData))
colnames(tidyData) <- gsub("BodyBody", "Body", colnames(tidyData))
colnames(tidyData) <- gsub(".(mean|std).([XYZ])", "\\2\\1", colnames(tidyData))
colnames(tidyData) <- gsub("Mag.", "Magnitude", colnames(tidyData))
colnames(tidyData) <- gsub("std", "StandardDeviation", colnames(tidyData))
colnames(tidyData) <- gsub("mean", "Mean", colnames(tidyData))
colnames(tidyData) <- gsub("Acc", "Accelerometer", colnames(tidyData))
colnames(tidyData) <- gsub("Gyro", "Gyroscope", colnames(tidyData))

# Output data
write.table(tidyData,"smartphoneData.txt", row.names = FALSE)
