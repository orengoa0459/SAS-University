/* Program Heart found in /folders/myfolders/Project
This program creates a output summary comprised of statistical data
for dataset Heart

Programmer: Anthony Orengo
Date Written: November 7, 2019*/

title "Statistical Summary on the Heart DataSet"; 

/*Initiates the mean procedure for the selected variables in 
data set Heart using the by statement*/
proc means data = perm.heart; 

/*Creates a data set summary comprised of statistical data*/ 
output out = summary 
/*Autonames newly created statistics*/
n = 
mean = 
nmiss = 
median = 
std = 
min = 
max= /autoname; 
run; 
