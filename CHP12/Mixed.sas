/* Program Mixed found in /folders/myfolders/Chp_12*/
/*This program lowercases and properly capitlizes the observations 
listed in variable Name*/ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/

data Mixed;
/*References data from data set Perm.Mixed.*/
set perm.Mixed;
/*Makes all characters lowercased*/
NameLow = Lowcase(Name);
/*Capitalizes the first character and leaves the rest of the 
characters lowercased*/
NameProp = Propcase(Name);

NameHard = upcase(Name);

run;
/*Displays a table with results for dataset Mixed*/
title "Listing for Mixed";
proc print data = Mixed;
run;