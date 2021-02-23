/* Program Miss_Blood found in /folders/myfolders/Chp_11*/
/*This program computes the number of missing input for variables 
WBC,RBC, and Chol.*/ 
/*Programmer: Anthony Orengo
Date Written: October 16 , 2019*/

data Miss_Blood; 
/*Reference data set Perm.Blood*/
set perm.Blood; 
/*Assigns the ordinary numeric value "." to missing data in variables
Gender, RBC, and Chol*/ 
if missing(WBC) then call missing(Gender,RBC,Chol);
run;
/*Displays a table with results for dataset Miss_Blood*/
title "Listing for Miss_Blood";
proc print data = Miss_Blood; 
run;

