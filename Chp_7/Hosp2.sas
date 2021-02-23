/* Program Hosp2 found in /folders/myfolders/Chp_7*/
/*This program displays a data table for specific subjects in data set Hosp*/ 
/*Programmer: Anthony Orengo
Date Written: September 23, 2019;*/


data Hosp2;
/*References data from data set Perm.Hosp*/
set Perm.Hosp;

/*Where statement (With OR Operator) used to set conditions for specific subjects*/
where Subject = 5 or Subject = 100 or Subject = 150 or Subject = 200;
run;

/*Displays table for selected subjects in data set Hosp*/
title "Listing for Select Subjects";
proc print data = Hosp2;
run;

