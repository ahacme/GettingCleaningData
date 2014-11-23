

Variable Information


Feature Selection from raw data set
The following verbiage is taken directly from the original experiment described in the README.md file. See the list of readable columns names transformed from the raw data. 

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
 '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 
•tBodyAcc-XYZ
•tGravityAcc-XYZ
•tBodyAccJerk-XYZ
•tBodyGyro-XYZ
•tBodyGyroJerk-XYZ
•tBodyAccMag
•tGravityAccMag
•tBodyAccJerkMag
•tBodyGyroMag
•tBodyGyroJerkMag
•fBodyAcc-XYZ
•fBodyAccJerk-XYZ
•fBodyGyro-XYZ
•fBodyAccMag
•fBodyAccJerkMag
•fBodyGyroMag
•fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
•mean(): Mean value
•std(): Standard deviation
•mad(): Median absolute deviation 
•max(): Largest value in array
•min(): Smallest value in array
•sma(): Signal magnitude area
•energy(): Energy measure. Sum of the squares divided by the number of values. 
•iqr(): Interquartile range 
•entropy(): Signal entropy
•arCoeff(): Autorregresion coefficients with Burg order equal to 4
•correlation(): correlation coefficient between two signals
•maxInds(): index of the frequency component with largest magnitude
•meanFreq(): Weighted average of the frequency components to obtain a mean frequency
•skewness(): skewness of the frequency domain signal 
•kurtosis(): kurtosis of the frequency domain signal 
•bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
•angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
•gravityMean
•tBodyAccMean
•tBodyAccJerkMean
•tBodyGyroMean
•tBodyGyroJerkMean

The list of variables is listed here. 

 [1] "Subject"                            
 [2] "Activity"                           
 [3] "tBodyAccmean()X"                    
 [4] "tBodyAccmean()Y"                    
 [5] "tBodyAccmean()Z"                    
 [6] "tGravityAccmean()X"                 
 [7] "tGravityAccmean()Y"                 
 [8] "tGravityAccmean()Z"                 
 [9] "tBodyAccJerkmean()X"                
[10] "tBodyAccJerkmean()Y"                
[11] "tBodyAccJerkmean()Z"                
[12] "tBodyGyromean()X"                   
[13] "tBodyGyromean()Y"                   
[14] "tBodyGyromean()Z"                   
[15] "tBodyGyroJerkmean()X"               
[16] "tBodyGyroJerkmean()Y"               
[17] "tBodyGyroJerkmean()Z"               
[18] "tBodyAccMagmean()"                  
[19] "tGravityAccMagmean()"               
[20] "tBodyAccJerkMagmean()"              
[21] "tBodyGyroMagmean()"                 
[22] "tBodyGyroJerkMagmean()"             
[23] "fBodyAccmean()X"                    
[24] "fBodyAccmean()Y"                    
[25] "fBodyAccmean()Z"                    
[26] "fBodyAccmeanFreq()X"                
[27] "fBodyAccmeanFreq()Y"                
[28] "fBodyAccmeanFreq()Z"                
[29] "fBodyAccJerkmean()X"                
[30] "fBodyAccJerkmean()Y"                
[31] "fBodyAccJerkmean()Z"                
[32] "fBodyAccJerkmeanFreq()X"            
[33] "fBodyAccJerkmeanFreq()Y"            
[34] "fBodyAccJerkmeanFreq()Z"            
[35] "fBodyGyromean()X"                   
[36] "fBodyGyromean()Y"                   
[37] "fBodyGyromean()Z"                   
[38] "fBodyGyromeanFreq()X"               
[39] "fBodyGyromeanFreq()Y"               
[40] "fBodyGyromeanFreq()Z"               
[41] "fBodyAccMagmean()"                  
[42] "fBodyAccMagmeanFreq()"              
[43] "fBodyBodyAccJerkMagmean()"          
[44] "fBodyBodyAccJerkMagmeanFreq()"      
[45] "fBodyBodyGyroMagmean()"             
[46] "fBodyBodyGyroMagmeanFreq()"         
[47] "fBodyBodyGyroJerkMagmean()"         
[48] "fBodyBodyGyroJerkMagmeanFreq()"     
[49] "angle(tBodyAccMeangravity)"         
[50] "angle(tBodyAccJerkMean)gravityMean)"
[51] "angle(tBodyGyroMeangravityMean)"    
[52] "angle(tBodyGyroJerkMeangravityMean)"
[53] "angle(XgravityMean)"                
[54] "angle(YgravityMean)"                
[55] "angle(ZgravityMean)"                
[56] "tBodyAccstd()X"                     
[57] "tBodyAccstd()Y"                     
[58] "tBodyAccstd()Z"                     
[59] "tGravityAccstd()X"                  
[60] "tGravityAccstd()Y"                  
[61] "tGravityAccstd()Z"                  
[62] "tBodyAccJerkstd()X"                 
[63] "tBodyAccJerkstd()Y"                 
[64] "tBodyAccJerkstd()Z"                 
[65] "tBodyGyrostd()X"                    
[66] "tBodyGyrostd()Y"                    
[67] "tBodyGyrostd()Z"                    
[68] "tBodyGyroJerkstd()X"                
[69] "tBodyGyroJerkstd()Y"                
[70] "tBodyGyroJerkstd()Z"                
[71] "tBodyAccMagstd()"                   
[72] "tGravityAccMagstd()"                
[73] "tBodyAccJerkMagstd()"               
[74] "tBodyGyroMagstd()"                  
[75] "tBodyGyroJerkMagstd()"              
[76] "fBodyAccstd()X"                     
[77] "fBodyAccstd()Y"                     
[78] "fBodyAccstd()Z"                     
[79] "fBodyAccJerkstd()X"                 
[80] "fBodyAccJerkstd()Y"                 
[81] "fBodyAccJerkstd()Z"                 
[82] "fBodyGyrostd()X"                    
[83] "fBodyGyrostd()Y"                    
[84] "fBodyGyrostd()Z"                    
[85] "fBodyAccMagstd()"                   
[86] "fBodyBodyAccJerkMagstd()"           
[87] "fBodyBodyGyroMagstd()"              
[88] "fBodyBodyGyroJerkMagstd()" 




