/* Program College found in /folders/myfolders/Chp17
This program displays a three-way table using the frequency procedure for the selected variables 
Gender,Scholarship and SchoolSize for dataset College. 

Programmer: Anthony Orengo
Date Written: November 6, 2019*/

title "Three-Way Table for Dataset College";
/*Computes the frequency for the dataset while producing a three-way table */
proc freq data = Perm.college;
/*An asterisk separates each variable to create a three-way table*/ 
tables Gender * Scholarship * SchoolSize;
run;