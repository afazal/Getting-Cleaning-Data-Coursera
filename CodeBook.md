
## Data Set Overview    

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

## Train Data Set     

- 'train/X_train.txt': Training set with all the values

- 'train/y_train.txt': Training labels which match with the activity labels

## Test Data Set     

- 'test/X_test.txt': Test set with all the values

- 'test/y_test.txt': Test labels which match with the activity labels 



## The Main features used in the dataset


-mean(): Mean value
-std(): Standard deviation
-mad(): Median absolute deviation 
-max(): Largest value in array
-min(): Smallest value in array
-sma(): Signal magnitude area
-energy(): Energy measure. Sum of the squares divided by the number of values. 
-iqr(): Interquartile range 
-entropy(): Signal entropy
-arCoeff(): Autorregresion coefficients with Burg order equal to 4
-correlation(): correlation coefficient between two signals
-maxInds(): index of the frequency component with largest magnitude
-meanFreq(): Weighted average of the frequency components to obtain a mean frequency
-skewness(): skewness of the frequency domain signal 
-kurtosis(): kurtosis of the frequency domain signal 
-bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
-angle(): Angle between to vectors.

## Subject test and train variables

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


## The Process of cleaning data

The process invloved the following steps:

- Extracting the dataset
- reading the test and train dataset
- reading the features and activities columns
- combining all the test and train data to make a complete dataset
- labelling the data and assigning proper names( full abbreviations eg : std --> StandardDeviation)
- Extracting only the measurements on the mean and standard deviation for each measurement.
- Creating independent tidy set with the average of each variable for each activity and each            subject.
- Write the data set to the tidy_data.txt file.
