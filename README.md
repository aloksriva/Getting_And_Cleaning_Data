README for Getting and Cleaning Data Project's Peer Assessment
==============================================================


In this submission towards Coursera's Getting and Cleaning Data Peer Assessment, my script run_analysis.R includes the following capabilities:

1) If required, sets up files for processing

2) Downloads, unzips and reads source data

3) Binds Test and Training data together

4) Labels activities and their observations

5) Combines subjects and activities in one dataframe

6) Extracts observations of source data under columns containing "mean()" (excluding "meanFreq()" column values) or "std" and adds them to a composite dataframe

7) If "reshape" library is not installed, installs it

8) Melts and casts data in order to obtain the mean of each measurement of subject + activity

9) Writes the output from step #8 to "tidy_output.txt"
