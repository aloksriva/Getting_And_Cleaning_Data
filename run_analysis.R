#Check if directory "UCI HAR Dataset" exists in current working directory. If not, download 
#file from URL provided, unzip the same and finally, perform housekeeping
dir <- "UCI HAR Dataset"
if(!file.exists(dir)) {
  zippedFile <- "rawData.zip"
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile=zippedFile)
  unzip(zippedFile)
  file.remove(zippedFile)
}

#Read Test Data Sets from files provided in the unzipped folder
testDir <- "UCI HAR Dataset/test"
testSubjects <- read.table(paste(testDir, "/subject_test.txt", sep=""))
testObs <- read.table(paste(testDir, "/X_test.txt", sep=""))
testActs <- read.table(paste(testDir, "/y_test.txt", sep=""))
rm(testDir)

#Read Training Data Sets from files provided in the unzipped folder#
trainDir <- "UCI HAR Dataset/train"
trainSubjects <- read.table(paste(trainDir, "/subject_train.txt", sep=""))
trainObs <- read.table(paste(trainDir, "/X_train.txt", sep=""))
trainActs <- read.table(paste(trainDir, "/y_train.txt", sep=""))
rm(trainDir)

#Read Activity Labels and Features
activityLabels <- read.table(paste(dir, "/activity_labels.txt", sep=""))
featuresList <- read.table(paste(dir, "/features.txt", sep=""))
rm(dir)

#Merge Test & Training Data sets for Subject, Data and Labels respectively and finally perform housekeeping
subjectsList <- rbind(testSubjects, trainSubjects)
obsList <- rbind(testObs, trainObs)
actsList <- rbind(testActs, trainActs)
rm(testSubjects, trainSubjects, testObs, trainObs, testActs, trainActs)

#Apply labels to activities and observations and perform housekeeping 
actsList <- sapply(actsList, function(x) activityLabels[x, 2])
names(obsList) <- featuresList[, 2]
rm(activityLabels, featuresList)

# Create a composite dataframe of subjects and activities and perform housekeeping
compositeData <- data.frame(subjectsList, actsList)
names(compositeData)[] <- c("Subject", "Activity")
rm(subjectsList, actsList)

#Identify the labels Mean (exclude label meanFreq) and std, add them to composite dataframe and perform housekeeping
labelsRequired <- (grepl("-mean()", names(obsList)) & !grepl("-meanFreq()", names(obsList))
                   | grepl("std", names(obsList)))
compositeData <- cbind(compositeData, obsList[, labelsRequired])
rm(obsList, labelsRequired)

#Check if reshape package is available, if not, install the same
if(!suppressWarnings(require("reshape"))) {
  install.packages("reshape")
  library(reshape)
}

#Melt and cast the composite table, taking the mean of variables for each subject+activity and perform housekeeping
molten <- melt(compositeData, id=c("Subject", "Activity"))
tidy <- cast(molten, Subject+Activity~variable, mean)
rm(compositeData, molten)

#Write tidied data set to output file and perform housekeeping
write.table(tidy, "tidy_output.txt")
rm(tidy)