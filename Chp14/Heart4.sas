/* Program Heart found in /folders/myfolders/Chp17
This program generates one-way frequencies for variables
BP Status and Smoking Status for dataset Heart. 

Programmer: Anthony Orengo
Date Written: November 7, 2019*/

title "One-way Frequencies for Dataset Heart"; 
/*Computes the frequecy procedure for the dataset Heart*/
proc freq data = perm.heart; 
/*Displays tables while eliminating the percentage column*/
tables BP_Status Smoking_Status / nocum nopercent; 
run;
