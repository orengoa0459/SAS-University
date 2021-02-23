/* Program Heart found in /folders/myfolders/Project
This program computes the mean, median, minimum, and maximum and the number 
of both missing and nonmissing values for the variables ClassRank and GPA.

Programmer: Anthony Orengo
Date Written: November 7, 2019*/

/*Sorts data by the variables Height and Weight in dataset
Heart*/
proc sort data = perm.heart;
by Height Weight;
run;

title "Statistics on the Heart Data Set"; 
title2 "Broken down by Height and Weight";
/*Initiates the mean procedure for the selected variables in 
data set Heart using the by statement*/
proc means data = perm.heart
/*Produces the number of non missing values*/
n 
/*Produces the number of missing values*/
nmiss
/*Produces the mean average for the listed variables*/
mean 
/*Produces the median average for the listed variables*/
STD
/*Produces the minimum non missing values for the listed variables*/
min
/*Produces the maximum value for the listed variables*/ 
max 
/*Controls the number of decimal places*/
maxdec = 2; 
var Height Weight;
run;




