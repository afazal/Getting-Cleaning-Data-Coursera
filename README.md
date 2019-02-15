---
<<<<<<< HEAD
title: "Getting and Cleaning Data Course Project"
---


## About This Project


One of the most exciting areas in all of data science right now is wearable computing . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

The data linked to and from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. Tn this project, the data was worked on and cleaned to prepare a proper, dataset for analysis and further study.

This repository contains the files:

.README.md  -->  provides an overview of the dataset and how it was made
.tidy_data.txt --> the dataset produced after cleaning and analysing
.CodeBook.md--> the code book, which describes the contents of the data set 
.run_analysis.R--> the R script used to create the data set 

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


## Attribute Information:

or each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## The Process

The process invloved the following steps:

- Extracting the dataset
- reading the test and train dataset
- reading the features and activities columns
- combining all the test and train data to make a complete dataset
- labelling the data and assigning proper names( full abbreviations eg : std --> StandardDeviation)
- Extracting only the measurements on the mean and standard deviation for each measurement.
- Creating independent tidy set with the average of each variable for each activity and each            subject.
- Write the data set to the tidy_data.txt file.
