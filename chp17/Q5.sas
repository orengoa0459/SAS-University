/* Program college found in /folders/myfolders/Chp17
This program generates a two-way table based on Scholarship and 
classrank for the dataset college.  

Programmer: Anthony Orengo
Date Written: November 6, 2019*/

/*Creates a format for the selected variables using a value in dataset college*/
proc format;
value rank low-70 = 'Low to 70' 
71-high = '71 and higher'; 
run; 

title "Scholarship by Class Rank";
/*Computes the frequency for the dataset while producing a two-way table */
proc freq data = Perm.college;
tables Scholarship * ClassRank;
/*Sets the format using the created format cholgrp*/  
format ClassRank rank.; 
run;






