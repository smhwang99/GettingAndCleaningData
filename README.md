###GettingAndCleaningData
**(For Project Assignment of Coursera Course Getting and Cleaning Data)**

-------------------------------------------------------------------------

###Instructions to execute "run_analysis.R"
**Please follow the following steps to execute "run_analysis.R" script**
#####1. Open run_analysis.R with RStudio
#####2. Select "Session" -> Set Working Directory -> To Source file location
#####3. source "run_analysis.R"
#####4. The tidy Data is output at current directory with filename "tidyData.txt"

**Note that if Sumsung Galaxy Data Sets are already in current directory, you need to comment out lines 7-9 of the script and directly go to step 3**

*The detail descriptions of variables, the data, and the transformations or work that had been performed to clean up the data in "tidyData.txt" is in "CodeBook.md" file located in the same directory as README.md file*

---------------------------------------------

###Brief descriptions of run_analysis.R code

**As commented in the code, the run_analysis.R code is executed in the following order.**

1. Download Samsung Data from internet and unzipped to local directory
          *Note: if Samsung data is already downloaded and unzipped, skip step 1 and start from step2*
2. Read Samsung Data Sets to different data frames in R environment
3. Merges the training and the test sets and create one data set "allData"
4. Extracts only the measurements on the mean and standard deviation for each measurement to data set "meanstdData"
5. Creates a second, independent tidy data set "tidyData" with the average of each variable for each activity and each subject
6. Replaces activity number with corresponding descritpive activity names in acitivity column, removes underscore and "STAIRS" to make the display nicer, add "avg" prefix to measurements averages and remove unnecessary characters like "-()_".
7. Write the tidy Data to "tidyData.txt" in current directory (To read data from the file to R, please use "read.table("./tidyData.txt")")
8. read back "tidyData.txt" and check if 1st several rows of data are correct
