run_analysis <-function() {

## get the data

## read in the column labels and remove parenthesis
xcol <- read.table("features.txt")
xcol <-data.frame(gsub("(", "", xcol[,"V2"], fixed = TRUE))
names(xcol)[1] <- "feature"
xcol <-data.frame(gsub(")", "", xcol[,"feature"], fixed = TRUE))
names(xcol)[1] <- "feature"

## read in train files and apply names
xtrain <- read.table("./train/X_train.txt", col.names = xcol[,"feature"])
ytrain <- read.table("./train/y_train.txt", col.names = c("activity"))
subtrain <- read.table("./train/subject_train.txt", col.names = c("subject"))

## read in test files and apply names
xtest <- read.table("./test/X_test.txt", col.names = xcol[,"feature"])
ytest <- read.table("./test/y_test.txt", col.names = c("activity"))
subtest <- read.table("./test/subject_test.txt", col.names = c("subject"))


##combine train and test data with rbind
ytotal <-rbind(ytrain, ytest)
subtotal <-rbind(subtrain, subtest)
xtotal <-rbind(xtrain, xtest)

## reduce columns to those which contain "mean" or "std"
xreduced <- xtotal[, grep ("mean|std", xcol[,"feature"])]

## replace activity number with name
ytotal <-data.frame(gsub("1", "WALKING", ytotal[,]))
ytotal <-data.frame(gsub("2", "WALKING_UPSTAIRS", ytotal[,]))
ytotal <-data.frame(gsub("3", "WALKING_DOWNSTAIRS", ytotal[,]))
ytotal <-data.frame(gsub("4", "SITTING", ytotal[,]))
ytotal <-data.frame(gsub("5", "STANDING", ytotal[,]))
ytotal <-data.frame(gsub("6", "LAYING", ytotal[,]))
names(ytotal) [1] <- "activity"

## combine the subject, activity, and mean or std data with cbind
dt <-cbind(subtotal, ytotal)
dt <-cbind(dt, xreduced)

## take the average of each variable for each subject and activity
dta <- aggregate(dt[,3:81], by = list("subject" = dt$subject,  "activity" = dt$activity), FUN = mean)

##write out the data to file subjectActivityMean.txt
write.table(dta, "subjectActivityMean.txt", quote = FALSE, row.names = FALSE)
}