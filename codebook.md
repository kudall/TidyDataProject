# CODEBOOK

Variables:

subject:                  int  1 - 30 represents the volunteer performing an activity

activity:                 string for what the subject was doing:
                          LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS,WALKING_UPSTAIRS
                          
The data in the following variables are numbers that represent the result of taking the average for each subject and activity from the original data. 
The original data comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another 
low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

                         
                          The body acceleration signal obtained by subtracting the gravity from the total acceleration:
tBodyAcc.mean.X           num  mean in X direction
tBodyAcc.mean.Y           num  mean in Y direction
tBodyAcc.mean.Z           num  mean in Z direction
tBodyAcc.std.X            num  std in X direction
tBodyAcc.std.Y            num  std in Y direction
tBodyAcc.std.Z            num  std in Z direction
 
                          The gravity acceleration signal:
tGravityAcc.mean.X        num  mean in X direction
tGravityAcc.mean.Y        num  mean in Y direction
tGravityAcc.mean.Z        num  mean in Z direction
tGravityAcc.std.X         num  std in X direction
tGravityAcc.std.Y         num  std in Y direction
tGravityAcc.std.Z         num  std in Z direction
 
                          The Jerk signals were derived in time from the body linear acceleration and angular velocity:
tBodyAccJerk.mean.X       num  mean in X direction
tBodyAccJerk.mean.Y       num  mean in Y direction
tBodyAccJerk.mean.Z       num  mean in Z direction
tBodyAccJerk.std.X        num  std in X direction
tBodyAccJerk.std.Y        num  std in Y direction
tBodyAccJerk.std.Z        num  std in Z direction

                          The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second:
tBodyGyro.mean.X          num  mean in X direction
tBodyGyro.mean.Y          num  mean in Y direction
tBodyGyro.mean.Z          num  mean in Z direction
tBodyGyro.std.X           num  std in X direction
tBodyGyro.std.Y           num  std in Y direction
tBodyGyro.std.Z           num  std in Z direction

                          The Jerk signals were derived in time from the body linear acceleration and angular velocity:
tBodyGyroJerk.mean.X      num  mean in X direction
tBodyGyroJerk.mean.Y      num  mean in Y direction
tBodyGyroJerk.mean.Z      num  mean in Z direction
tBodyGyroJerk.std.X       num  std in X direction
tBodyGyroJerk.std.Y       num  std in Y direction
tBodyGyroJerk.std.Z       num  std in Z direction
 
                          The magnitude of the three-dimensional signals calculated using the Euclidean norm:
tBodyAccMag.mean             
tBodyAccMag.std              
tGravityAccMag.mean          
tGravityAccMag.std           
tBodyAccJerkMag.mean        
tBodyAccJerkMag.std          
tBodyGyroMag.mean            
tBodyGyroMag.std             
tBodyGyroJerkMag.mean        
tBodyGyroJerkMag.std         
 
                          Fast Fourier Transform of some of the signals:
fBodyAcc.mean.X           
fBodyAcc.mean.Y           
fBodyAcc.mean.Z          
fBodyAcc.std.X            
fBodyAcc.std.Y            
fBodyAcc.std.Z          
fBodyAcc.meanFreq.X       
fBodyAcc.meanFreq.Y        
fBodyAcc.meanFreq.Z          
fBodyAccJerk.mean.X          
fBodyAccJerk.mean.Y          
fBodyAccJerk.mean.Z          
fBodyAccJerk.std.X           
fBodyAccJerk.std.Y           
fBodyAccJerk.std.Z           
fBodyAccJerk.meanFreq.X      
fBodyAccJerk.meanFreq.Y      
fBodyAccJerk.meanFreq.Z      
fBodyGyro.mean.X             
fBodyGyro.mean.Y             
fBodyGyro.mean.Z             
fBodyGyro.std.X              
fBodyGyro.std.Y              
fBodyGyro.std.Z              
fBodyGyro.meanFreq.X         
fBodyGyro.meanFreq.Y         
fBodyGyro.meanFreq.Z         
fBodyAccMag.mean             
fBodyAccMag.std              
fBodyAccMag.meanFreq         
fBodyBodyAccJerkMag.mean    
fBodyBodyAccJerkMag.std      
fBodyBodyAccJerkMag.meanFreq 
fBodyBodyGyroMag.mean        
fBodyBodyGyroMag.std         
fBodyBodyGyroMag.meanFreq    
fBodyBodyGyroJerkMag.mean   
fBodyBodyGyroJerkMag.std    
fBodyBodyGyroJerkMag.meanFreq
