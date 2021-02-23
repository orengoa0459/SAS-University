/* Program Blood found in /folders/myfolders/Chp14
This program list the first 10 observations of data set Blood, while controlling 
what variables will appear in the table.   
Programmer: Anthony Orengo
Date Written: October 28 2019*/



data Blood;

/*References data from data set Perm.Blood*/
set Perm.Blood;

/*Displays a table with results for dataset Blood*/
title "Listing of Blood"; 
proc print data = perm.blood(obs = 10) label; 
/*Omits the obs column and places "Subject" as the first column*/
id Subject; 
/*Controls what variables will appear in the listing*/
var WBC RBC Chol; 
/*Labels variables WBC, RBC, Chol with specified title*/
label WBC = 'White Blood Cells' 
RBC = 'Red Blood Cells' 
Chol = 'Cholesterol';
run;



