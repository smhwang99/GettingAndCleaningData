#
# Project Assignment for Coursera course "Getting and Cleaning Data"
# Filename: run_analysis.R
#
# Step 1: Download Samsung Data from internet and unzipped to local directory
#
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./getdata-num_subject = unique(tidyData$subject)projectfiles-UCI HAR Dataset.zip")
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
#
# Step 2: Import Samsung Data Sets to R environment
#
s_trainData = read.table("./UCI HAR Dataset/train/subject_train.txt")
X_trainData = read.table("./UCI HAR Dataset/train/X_train.txt")
y_trainData = read.table("./UCI HAR Dataset/train/y_train.txt")
s_testData = read.table("./UCI HAR Dataset/test/subject_test.txt")
X_testData = read.table("./UCI HAR Dataset/test/X_test.txt")
y_testData = read.table("./UCI HAR Dataset/test/y_test.txt")
featsName = read.table("./UCI HAR Dataset/features.txt")
actLabel = read.table("./UCI HAR Dataset/activity_labels.txt")
actLabel[,2] = sub("STAIRS","",actLabel[,2])
#
# Step 3: Merges the training and the test sets and create one data set "allData"
#
s_allData <- rbind(s_trainData,s_testData)
X_allData <- rbind(X_trainData,X_testData)
y_allData <- rbind(y_trainData,y_testData)
allData <- data.frame(s_allData,y_allData,X_allData)
names(allData) <- c("subject","activity",as.character(featsName[,2]))
names(allData)
#
# Step 4: Extracts only the measurements on the mean and standard deviation 
# for each measurement to data set "meanstdData" 
#
meanstdIdx = grepl("subject|activity|[Mm]ean[(]|[Ss]td[(]",names(allData))
meanstdData <- allData[,meanstdIdx]
#
# Step 5: Creates a second, independent tidy data set "tidyData" with the average of each
# variable for each activity and each subject
#
tidyData <- data.frame(matrix(ncol = ncol(meanstdData), nrow = 180))
names(tidyData) <- names(meanstdData)
for (subIdx in seq(1,30)){
  for (actIdx in seq(1,6)){
    idx <- meanstdData$subject==subIdx & meanstdData$activity==actIdx
    all_idx <- actIdx+(subIdx-1)*6
    tidyData[all_idx,] <- colMeans(meanstdData[idx,],dims=1)
  }
}
#
# Step 6: Replaces activity number with corresponding descritpive activity names 
# in acitivity column, removes underscore and "STAIRS" to make the display nicer, 
# add "avg" prefix to measurements averages and remove unnecessary characters like "-()_".
#
for (i in actLabel[,1]){
  tidyData$activity[tidyData$activity == actLabel[i,1]] <- 
    sub("_"," ",as.character(actLabel[i,2]))
}
head(tidyData[1:7],n=10)
names(tidyData) <- gsub("-","",names(tidyData))
names(tidyData) <- sub("\\()","",names(tidyData))
names(tidyData) <- sub("^t","avgt",names(tidyData))
names(tidyData) <- sub("^f","avgf",names(tidyData))
#
# Step 7: Write the tidy Data to "tidyData.txt" in current directory
#
write.table(tidyData,"./tidyData.txt")
#
# Step 8: read back "tidyData.txt" and check if 1st several rows of data are correct
#
checkData = read.table("./tidyData.txt")
head(checkData[,1:10],n=10)


