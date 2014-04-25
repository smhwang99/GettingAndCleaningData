##CodeBook for run_analysis.R

**“tidyData.txt” is a data frame with dimension of 180 rows and 68 columns variable.  Since there are total 30 subjects and 6 types of activities, each row is corresponding to one combination of subject and activity as specified by “subject” and “activity” column variable. The remaining 66 feature columns are the average of only measurements on mean() or std() that are extracted from the original Samsung data sets.**

**The Column Variables are described in the following table.**

|Column Index |Column Names | Variable Description |
|------------|:----------:| -----------:|
|1|subject| range from 1 to 30|
|2|activity| 6 types of activities, "WALKING","WALKING UP", WALKING DOWN, SITTING, STANDING, LAYING|
|3| avgtBodyAccmeanX | Average of Body Acceleration mean in X direction|
|4| avgtBodyAccmeanY | Averag of Body Acceleration mean in Y direction|
|5| avgtBodyAccmeanZ | Averag of Body Accelerationstd mean in Z direction|
|6| avgtBodyAccstdX | Average of Body Acceleration standard deviation in X direction|
|7| avgtBodyAccstdY | Average of Body Acceleration standard deviation in Y direction|
|8| avgtBodyAccstdZ | Average of Body Acceleration standard deviation in Z direction|
|9| avgtGravityAccmeanX | Average of Gravity Acceleration mean in X direction|
|10| avgtGravityAccmeanY | Average of Gravity Acceleration mean in Y direction|
|11| avgtGravityAccmeanZ | Average of Gravity Acceleration mean in Z direction|
|12| avgtGravityAccstdX | Average of Gravity Acceleration standard deviation in X direction|
|13| avgtGravityAccstdY | Average of Gravity Acceleration standard deviation in Y direction|
|14| avgtGravityAccstdZ | Average of Gravity Acceleration standard deviation in Z direction|
|15| avgtBodyAccJerkmeanX | Average of Body Acceleration Jerk mean in X direction|
|16| avgtBodyAccJerkmeanY | Average of Body Acceleration Jerk mean in Y direction|
|17| avgtBodyAccJerkmeanZ |Average of Body Acceleration Jerk mean in Z direction |
|18| avgtBodyAccJerkstdX | Average of Body Acceleration Jerk standard deviation in X direction|
|19| avgtBodyAccJerkstdY | Average of Body Acceleration Jerk standard deviation in Y direction|
|20| avgtBodyAccJerkstdZ | Average of Body Acceleration Jerk standard deviation in Z direction|
|21| avgtBodyGyromeanX | Average of Body Gyroscope angular velocity mean in X direction|
|22| avgtBodyGyromeanY | Average of Body Gyroscope angular velocity mean in Y direction|
|23| avgtBodyGyromeanZ | Average of Body Gyroscope angular velocity mean in Z direction|
|24| avgtBodyGyrostdX |Average of Body Gyroscope velocity standard deviation in X direction |
|25| avgtBodyGyrostdY |Average of Body Gyroscope velocity standard deviation in Y direction  |
|26| avgtBodyGyrostdZ |Average of Body Gyroscope velocity standard deviation in Z direction  |
|27| avgtBodyGyroJerkmeanX | Average of Body Gyroscope Jerk mean in X direction|
|28| avgtBodyGyroJerkmeanY | Average of Body Gyroscope Jerk mean in Y direction|
|29| avgtBodyGyroJerkmeanZ | Average of Body Gyroscope Jerk mean in Z direction|
|30| avgtBodyGyroJerkstdX | Average of Body Gyroscope Jerk standard deviation in X direction|
|31| avgtBodyGyroJerkstdY | Average of Body Gyroscope Jerk standard deviation in Y direction|
|32| avgtBodyGyroJerkstdZ | Average of Body Gyroscope Jerk standard deviation in Z direction|
|33| avgtBodyAccMagmean | Average of Body Acceleration Magnitude mean|
|34| avgtBodyAccMagstd | Average of Body Acceleration Magnitude standard deviation|
|35| avgtGravityAccMagmean |Average of Gravity Acceleration Magnitude mean |
|36| avgtGravityAccMagstd | Average of Gravity Acceleration Magnitude standard deviation|
|37| avgtBodyAccJerkMagmean | Average of Body Acceleration Jerk Magnitude mean|
|38| avgtBodyAccJerkMagstd |Average of Body Acceleration Jerk Magnitude standard deviation|
|39| avgtBodyGyroMagmean |Average of Body Gyroscope velocity Magnitude mean |
|40| avgtBodyGyroMagstd |Average of Body Gyroscope velocity Magnitude standard deviation  |
|41| avgtBodyGyroJerkMagmean | Average of Body Gyroscope Jerk Magnitude mean|
|42| avgtBodyGyroJerkMagstd |Average of Body Gyroscope Jerk Magnitude standard deviation  |
|43| avgfBodyAccmeanX | Average of frequency domain Body Acceleration mean in X direction|
|44| avgfBodyAccmeanY |Average of frequency domain Body Acceleration mean in Y direction |
|45| avgfBodyAccmeanZ |Average of frequency domain Body Acceleration mean in Z direction |
|46| avgfBodyAccstdX | Average of frequency domain Body Acceleration std in X direction|
|47| avgfBodyAccstdY | Average of frequency domain Body Acceleration std in Y direction|
|48| avgfBodyAccstdZ | Average of frequency domain Body Acceleration std in Z direction|
|49| avgfBodyAccJerkmeanX |Average of frequency domain Body Acceleration Jerk mean in X direction |
|50| avgfBodyAccJerkmeanY |Average of frequency domain Body Acceleration Jerk mean in Y direction |
|51| avgfBodyAccJerkmeanZ |Average of frequency domain Body Acceleration Jerk mean in Z direction |
|52| avgfBodyAccJerkstdX | Average of frequency domain Body Acceleration Jerk std in X direction |
|53| avgfBodyAccJerkstdY | Average of frequency domain Body Acceleration Jerk std in Y direction |
|54| avgfBodyAccJerkstdZ | Average of frequency domain Body Acceleration Jerk std in Z direction |
|55| avgfBodyGyromeanX |Average of frequency domain Body Gyroscope mean in X direction  |
|56| avgfBodyGyromeanY |Average of frequency domain Body Gyroscope mean in Y direction |
|57| avgfBodyGyromeanZ |Average of frequency domain Body Gyroscope mean in Z direction |
|58| avgfBodyGyrostdX | Average of frequency domain Body Gyroscope std in X direction|
|59| avgfBodyGyrostdY | Average of frequency domain Body Gyroscope std in Y direction|
|60| avgfBodyGyrostdZ | Average of frequency domain Body Gyroscope std in Z direction|
|61| avgfBodyAccMagmean |Average of frequency domain Body Acceleration magnitude mean |
|62| avgfBodyAccMagstd | Average of frequency domain Body Acceleration magnitude std |
|63| avgfBodyBodyAccJerkMagmean |Average of frequency domain Body Acceleration Jerk magnitude mean |
|64| avgfBodyBodyAccJerkMagstd | Average of frequency domain Body Acceleration Jerk magnitude std |
|65| avgfBodyBodyGyroMagmean | Average of frequency domain Body Gyroscope velocity magnitude mean|
|66| avgfBodyBodyGyroMagstd |  Average of frequency domain Body Gyroscope velocity magnitude std|
|67| avgfBodyBodyGyroJerkMagmean |Average of frequency domain Body Gyroscope Jerk magnitude mean |
|68| avgfBodyBodyGyroJerkMagstd | Average of frequency domain Body Gyroscope Jerk magnitude std|

---------------------------------------------

###Data Transformation:
**The tidy data set “tidyData” is pre-processed from original raw data in the following procedures**

1. Read Samsung Data Sets to different data frames in R environment
2. Merges the training and the test sets and create one data set called "allData"
3. Extracts only the measurements on the mean and standard deviation for each measurement to data set "meanstdData"
4. Creates a second, independent tidy data set "tidyData" with the average of each variable for each activity and each subject
5. Replaces activity number with corresponding descritpive activity names in acitivity column, removes underscore and "STAIRS" to make the display nicer, add "avg" prefix to measurements averages and remove unnecessary characters like "-()_".
6. Write the tidy Data to "tidyData.txt" in current directory


