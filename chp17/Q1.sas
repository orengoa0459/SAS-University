/* Program blood found in /folders/myfolders/Chp17
This program generates one-way frequencies for variables
Gender, BloodType, and AgeGroup from dataset Blood.. 

Programmer: Anthony Orengo
Date Written: November 6, 2019*/

title "One-way Frequencies for Dataset Blood"; 
/*Computes the frequecy procedure for the dataset Blood*/
proc freq data = perm.blood; 
/*Displays tables while eliminating the percentage column*/
tables Gender BloodType AgeGroup / nocum nopercent; 
run;

