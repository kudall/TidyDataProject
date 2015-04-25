# TidyDataProject
## Course project create a file run_analysis.R which will:
### Get and combine data and add variable names
* read in the column labels and remove parenthesis
* read train files and apply names
* read test files and apply names
* combine train and test data with rbind
### Reduce columns to those which contain "mean" or "std"
### Replace activity number with name
### Combine the subject, activity, and mean or std data with cbind
### Take the average of each variable for each subject and activity
### Write out the data to file subjectActivityMean.txt
### To read data into R use read.table("subjectActivityMean.txt", header = TRUE)
### See codebook for information about the variables