run_analysis <-function() {

xcol <- read.table("features.txt")

print(head(xcol))
print(xcol[1:6,"V2"])

xcol <-data.frame(gsub("(", "", xcol[,"V2"], fixed = TRUE))
names(xcol)[1] <- "feature"
print(head(xcol))

xcol <-data.frame(gsub(")", "", xcol[,"feature"], fixed = TRUE))
names(xcol)[1] <- "feature"
print(head(xcol))

## read in train files
xtrain <- read.table("./train/X_train.txt", col.names = xcol[,"feature"])
##print(dim(xtrain))
ytrain <- read.table("./train/y_train.txt", col.names = c("activity"))
##print(head(ytrain))
subtrain <- read.table("./train/subject_train.txt", col.names = c("subject"))
##print(head(subtrain))



## read in test files
xtest <- read.table("./test/X_test.txt", col.names = xcol[,"feature"])
##print(dim(xtest))
ytest <- read.table("./test/y_test.txt", col.names = c("activity"))
##print(head(ytest))
subtest <- read.table("./test/subject_test.txt", col.names = c("subject"))
##print(head(subtest))

##make one 
ytotal <-rbind(ytrain, ytest)
subtotal <-rbind(subtrain, subtest)
xtotal <-rbind(xtrain, xtest)
print(dim(ytotal))
print(head(ytotal))
print(dim(subtotal))
print(head(subtotal))
print(dim(xtotal))
##print(head(xtotal, n=2))
xreduced <- xtotal[, grep ("mean|std", xcol[,"feature"])]
print(dim(xreduced))
print(head(xreduced, 2))

ytotal <-data.frame(gsub("1", "WALKING", ytotal[,]))
ytotal <-data.frame(gsub("2", "WALKING_UPSTAIRS", ytotal[,]))
ytotal <-data.frame(gsub("3", "WALKING_DOWNSTAIRS", ytotal[,]))
ytotal <-data.frame(gsub("4", "SITTING", ytotal[,]))
ytotal <-data.frame(gsub("5", "STANDING", ytotal[,]))
ytotal <-data.frame(gsub("6", "LAYING", ytotal[,]))
names(ytotal) [1] <- "activity"
print(summary(ytotal))
print(head(ytotal,100))
print(dim(ytotal))
dt <-cbind(subtotal, ytotal)
dt <-cbind(dt, xreduced)
print(head(dt))
print(summary(dt))
print(str(dt))
print(dim(dt))

dta <- aggregate(dt[,3:81], by = list("subject" = dt$subject,  "activity" = dt$activity), FUN = mean)

##names(dta)[1] <- "subject"
##names(dta)[2] <- "activity"
##dta <- dta[order(dta$subject),]
print(head(dta,60))
print(summary(dta))
print(str(dta))
write.table(dta, "actMean.txt", quote = FALSE, row.names = FALSE)
}