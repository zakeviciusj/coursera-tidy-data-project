# Code book
The following file describes the measures and dimensions that can be found in the output datasets

## Tidy dataset
After combining the raw data and cleaning it, fitness tracker measurements are stored in *dfClean* dataframe which consists of the following columns
*Note that I do not have a clue what majority of these mean so please be gentle if the descriptions do not really make much sense*

Seq | Column | Type | Values | Description
--- | --- | --- | --- | ---
1 | subject | integer | 1-30 | Identifier of the subject who the measurement belongs to
2	|	activity	| factor	| 1 = Walking, 2 = Walking upstairs, 3 = Walking downstairs, 4 = Sitting, 5 = Standing, 6 = Laying | Type of activity
3	|	recordset	| factor	| 1 = test, 2 = train | Which recordset measurement belongs to
4	|	TimeBodyAccelerometer-Mean-Xdimension	| number	|	Mean of Time domain Body Acceleration measurement on X dimension 
5	|	TimeBodyAccelerometer-Mean-Ydimension	| number	|	Mean of Time domain Body Acceleration measurement on Y dimension 
6	|	TimeBodyAccelerometer-Mean-Zdimension	| number	|	Mean of Time domain Body Acceleration measurement on Z dimension 
7	|	TimeGravityAccelerometer-Mean-Xdimension	| number	|	Mean of Time domain Gravity Acceleration measurement on X dimension 
8	|	TimeGravityAccelerometer-Mean-Ydimension	| number	|	Mean of Time domain Gravity Acceleration measurement on Y dimension 
9	|	TimeGravityAccelerometer-Mean-Zdimension	| number	|	Mean of Time domain Gravity Acceleration measurement on Z dimension 
10	|	TimeBodyAccelerometerJerk-Mean-Xdimension	| number	|	Mean of Time domain Body Acceleration Jerk measurement on X dimension 
11	|	TimeBodyAccelerometerJerk-Mean-Ydimension	| number	|	Mean of Time domain Body Acceleration Jerk measurement on Y dimension 
12	|	TimeBodyAccelerometerJerk-Mean-Zdimension	| number	|	Mean of Time domain Body Acceleration Jerk measurement on Z dimension 
13	|	TimeBodyGyroscope-Mean-Xdimension	| number	|	Mean of Time domain Body Gyration measurement on X dimension 
14	|	TimeBodyGyroscope-Mean-Ydimension	| number	|	Mean of Time domain Body Gyration measurement on Y dimension 
15	|	TimeBodyGyroscope-Mean-Zdimension	| number	|	Mean of Time domain Body Gyration measurement on Z dimension 
16	|	TimeBodyGyroscopeJerk-Mean-Xdimension	| number	|	Mean of Time domain Body Gyration Jerk measurement on X dimension 
17	|	TimeBodyGyroscopeJerk-Mean-Ydimension	| number	|	Mean of Time domain Body Gyration Jerk measurement on Y dimension 
18	|	TimeBodyGyroscopeJerk-Mean-Zdimension	| number	|	Mean of Time domain Body Gyration Jerk measurement on Z dimension 
19	|	TimeBodyAccelerometerMagnitude-Mean	| number	|	Magnitude calculation of Mean of Time domain Body Acceleration measurement
20	|	TimeGravityAccelerometerMagnitude-Mean	| number	|	Magnitude calculation of Mean of Time domain Gravity Acceleration measurement
21	|	TimeBodyAccelerometerJerkMagnitude-Mean	| number	|	Magnitude calculation of Mean of Time domain Body Acceleration Jerk measurement
22	|	TimeBodyGyroscopeMagnitude-Mean	| number	|	Magnitude calculation of Mean of Time domain Body Gyration measurement
23	|	TimeBodyGyroscopeJerkMagnitude-Mean	| number	|	Magnitude calculation of Mean of Time domain Body Gyration Jerk measurement
24	|	FrequencyBodyAccelerometer-Mean-Xdimension	| number	|	Mean of Frequency domain Body Acceleration measurement on X dimension 
25	|	FrequencyBodyAccelerometer-Mean-Ydimension	| number	|	Mean of Frequency domain Body Acceleration measurement on Y dimension 
26	|	FrequencyBodyAccelerometer-Mean-Zdimension	| number	|	Mean of Frequency domain Body Acceleration measurement on Z dimension 
27	|	FrequencyBodyAccelerometerJerk-Mean-Xdimension	| number	|	Mean of Frequency domain Body Acceleration Jerk measurement on X dimension 
28	|	FrequencyBodyAccelerometerJerk-Mean-Ydimension	| number	|	Mean of Frequency domain Body Acceleration Jerk measurement on Y dimension 
29	|	FrequencyBodyAccelerometerJerk-Mean-Zdimension	| number	|	Mean of Frequency domain Body Acceleration Jerk measurement on Z dimension 
30	|	FrequencyBodyGyroscope-Mean-Xdimension	| number	|	Mean of Frequency domain Body Gyration measurement on X dimension 
31	|	FrequencyBodyGyroscope-Mean-Ydimension	| number	|	Mean of Frequency domain Body Gyration measurement on Y dimension 
32	|	FrequencyBodyGyroscope-Mean-Zdimension	| number	|	Mean of Frequency domain Body Gyration measurement on Z dimension 
33	|	FrequencyBodyAccelerometerMagnitude-Mean	| number	|	Magnitude calculation of Mean of Frequency domain Body Acceleration measurement
34	|	FrequencyBodyBodyAccelerometerJerkMagnitude-Mean	| number	|	Magnitude calculation of Mean of Frequency domain Body Acceleration Jerk measurement
35	|	FrequencyBodyBodyGyroscopeMagnitude-Mean	| number	|	Magnitude calculation of Mean of Frequency domain Body Gyration measurement
36	|	FrequencyBodyBodyGyroscopeJerkMagnitude-Mean	| number	|	Magnitude calculation of Mean of Frequency domain Body Gyration Jerk measurement
37	|	TimeBodyAccelerometer-StandardDeviation-Xdimension	| number	|	Standard Deviation of Time domain Body Acceleration measurement on X dimension 
38	|	TimeBodyAccelerometer-StandardDeviation-Ydimension	| number	|	Standard Deviation of Time domain Body Acceleration measurement on Y dimension 
39	|	TimeBodyAccelerometer-StandardDeviation-Zdimension	| number	|	Standard Deviation of Time domain Body Acceleration measurement on Z dimension 
40	|	TimeGravityAccelerometer-StandardDeviation-Xdimension	| number	|	Standard Deviation of Time domain Gravity Acceleration measurement on X dimension 
41	|	TimeGravityAccelerometer-StandardDeviation-Ydimension	| number	|	Standard Deviation of Time domain Gravity Acceleration measurement on Y dimension 
42	|	TimeGravityAccelerometer-StandardDeviation-Zdimension	| number	|	Standard Deviation of Time domain Gravity Acceleration measurement on Z dimension 
43	|	TimeBodyAccelerometerJerk-StandardDeviation-Xdimension	| number	|	Standard Deviation of Time domain Body Acceleration Jerk measurement on X dimension 
44	|	TimeBodyAccelerometerJerk-StandardDeviation-Ydimension	| number	|	Standard Deviation of Time domain Body Acceleration Jerk measurement on Y dimension 
45	|	TimeBodyAccelerometerJerk-StandardDeviation-Zdimension	| number	|	Standard Deviation of Time domain Body Acceleration Jerk measurement on Z dimension 
46	|	TimeBodyGyroscope-StandardDeviation-Xdimension	| number	|	Standard Deviation of Time domain Body Gyration measurement on X dimension 
47	|	TimeBodyGyroscope-StandardDeviation-Ydimension	| number	|	Standard Deviation of Time domain Body Gyration measurement on Y dimension 
48	|	TimeBodyGyroscope-StandardDeviation-Zdimension	| number	|	Standard Deviation of Time domain Body Gyration measurement on Z dimension 
49	|	TimeBodyGyroscopeJerk-StandardDeviation-Xdimension	| number	|	Standard Deviation of Time domain Body Gyration Jerk measurement on X dimension 
50	|	TimeBodyGyroscopeJerk-StandardDeviation-Ydimension	| number	|	Standard Deviation of Time domain Body Gyration Jerk measurement on Y dimension 
51	|	TimeBodyGyroscopeJerk-StandardDeviation-Zdimension	| number	|	Standard Deviation of Time domain Body Gyration Jerk measurement on Z dimension 
52	|	TimeBodyAccelerometerMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Time domain Body Acceleration measurement
53	|	TimeGravityAccelerometerMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Time domain Gravity Acceleration measurement
54	|	TimeBodyAccelerometerJerkMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Time domain Body Acceleration Jerk measurement
55	|	TimeBodyGyroscopeMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Time domain Body Gyration measurement
56	|	TimeBodyGyroscopeJerkMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Time domain Body Gyration Jerk measurement
57	|	FrequencyBodyAccelerometer-StandardDeviation-Xdimension	| number	|	Standard Deviation of Frequency domain Body Acceleration measurement on X dimension 
58	|	FrequencyBodyAccelerometer-StandardDeviation-Ydimension	| number	|	Standard Deviation of Frequency domain Body Acceleration measurement on Y dimension 
59	|	FrequencyBodyAccelerometer-StandardDeviation-Zdimension	| number	|	Standard Deviation of Frequency domain Body Acceleration measurement on Z dimension 
60	|	FrequencyBodyAccelerometerJerk-StandardDeviation-Xdimension	| number	|	Standard Deviation of Frequency domain Body Acceleration Jerk measurement on X dimension 
61	|	FrequencyBodyAccelerometerJerk-StandardDeviation-Ydimension	| number	|	Standard Deviation of Frequency domain Body Acceleration Jerk measurement on Y dimension 
62	|	FrequencyBodyAccelerometerJerk-StandardDeviation-Zdimension	| number	|	Standard Deviation of Frequency domain Body Acceleration Jerk measurement on Z dimension 
63	|	FrequencyBodyGyroscope-StandardDeviation-Xdimension	| number	|	Standard Deviation of Frequency domain Body Gyration measurement on X dimension 
64	|	FrequencyBodyGyroscope-StandardDeviation-Ydimension	| number	|	Standard Deviation of Frequency domain Body Gyration measurement on Y dimension 
65	|	FrequencyBodyGyroscope-StandardDeviation-Zdimension	| number	|	Standard Deviation of Frequency domain Body Gyration measurement on Z dimension 
66	|	FrequencyBodyAccelerometerMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Frequency domain Body Acceleration measurement
67	|	FrequencyBodyBodyAccelerometerJerkMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Frequency domain Body Acceleration Jerk measurement
68	|	FrequencyBodyBodyGyroscopeMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Frequency domain Body Gyration measurement
69	|	FrequencyBodyBodyGyroscopeJerkMagnitude-StandardDeviation	| number	|	Magnitude calculation of Standard Deviation of Frequency domain Body Gyration Jerk measurement

## Summary dataset
Additional dataframe *dfSummary* is created to store summarized values of above measurements. The output of the data frame can also be found in the file *Tracker Summary.txt*

Seq | Column | Type | Description
--- | --- | --- | ---
1 | subject | integer | Identifier of the subject who the measurement belongs to
2 | activity | character | Type of activity
3 | variable | factor | One of the measurements described in above table between Seq 4 and 69
4 | value | numeric | Mean of said measurement
