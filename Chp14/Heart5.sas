/* Program voter found in /folders/myfolders/Chp17
This program displays a two-way table consisting of 
frequency data from variables Sex and Status from dataset Heart.    

Programmer: Anthony Orengo
Date Written: November 7, 2019*/

/*Arranges the table in descending order for variable Sex*/
proc sort data = perm.heart;
by descending Sex;
run;
/*Arranges the table in descending order for variable Status*/
proc sort data = perm.heart;
by descending Status;
run;

title "Two-Way Table for Heart by Sex and Status";
/*Computes the frequency for the dataset while producing a two-way table */
proc freq data = Perm.heart
order=data;
tables Sex * Status
/chisq; /*Used to examine the association between two categorical variables.*/
run;