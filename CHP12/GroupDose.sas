/* Program Study found in /folders/myfolders/Chp_12*/
/*This program displays two variables that are joined together
and separated by a hyphen*/ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/

data study;
/*References data from data set Perm.study and keeps 
variables Group and Dose.*/
set perm.study(keep = Group Dose);
/*Combines both variables with a hyphen to separate*/
GroupDose = catx('-', Group, Dose);
run;
/*Displays a table with results for dataset Study*/ 
title "Listing for Study";
proc contents data = study;
run;

data study2;
/*References data from data set Perm.study and keeps 
variables Group and Dose.*/
set perm.study(keep = Group Dose);
/*Combines both variables with a hyphen to separate*/
GroupDose = Group|| '-' || Dose;
run;
/*Displays a table with results for dataset Study*/ 
title "Listing for Study2";
proc print data = study2;
run;






