/* Program College found in /folders/myfolders/Chp16
This program computes the mean, median, minimum, and maximum and the number 
of both missing and nonmissing values by SchoolSize for the variables ClassRank and GPA.

Programmer: Anthony Orengo
Date Written: November 4, 2019*/

/*Sorts data by the variable SchoolSize in data set
college*/
proc sort data = learn.college

out = college; 
by SchoolSize; 
run; 
/*Displays the titles for data set college*/
title "Statistics on the College Data Set - Using BY"; 
title2 "Broken down by School Size"; 
/*Initiates the mean procedure for the selected variables in 
data set college using the by statement*/
proc means data = college 
/*Produces the number of non missing values*/
n 
/*Produces the mean average for the listed variables*/
mean 
/*Produces the median average for the listed variables*/
median 
/*Produces the minimum non missing values for the listed variables*/
min
/*Produces the maximum value for the listed variables*/ 
max 
/*Controls the number of decimal places*/
maxdec = 2; 
by SchoolSize; 
var ClassRank GPA; 
run; 

title "Statistics on the College Data Set - Using CLASS"; 
title2 "Broken down by School Size";
/*Initiates the mean procedure for the selected variables in 
data set college using the by statement*/ 
proc means data = learn.college 
n 
mean 
median
min 
max 
/*Controls the number of decimal places*/
maxdec = 2; 
class SchoolSize; 
var ClassRank GPA; 
run;


