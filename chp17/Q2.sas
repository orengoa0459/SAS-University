/* Program Bloodpressure found in /folders/myfolders/Chp17
This program displays the Age Group Frequency for Dataset while
eliminating the cumulative statistics and percentages.

Programmer: Anthony Orengo
Date Written: November 6, 2019*/


proc format; 
value agegrp low-40 = '40 and Younger' 
41-60 = 'Middle Age' 61-high = '61 and Older'; 
run; 

title "Age Group Frequency for Dataset Bloodpressure "; 
 
/*Computes the frequecy procedure for dataset BloodPressure*/
proc freq data = perm.bloodpressure; 
/*Eliminates the cumulative statistics and percentages from table 
Age*/
tables Age / nocum nopercent;
/*Sets the format using the created format agegrp*/ 
format Age agegrp.; 
run;