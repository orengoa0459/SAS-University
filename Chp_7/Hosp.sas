/* Program Hosp found in /folders/myfolders/Chp_7*/
/*This program displays a data table for specific subjects in data set Hosp*/ 
/*Programmer: Anthony Orengo
Date Written: September 23, 2019;*/

data Hosp;
/*References data from data set Perm.Hosp*/
set Perm.Hosp;

/*Where statement (with in operator) used to set conditions for specific subjects*/
where Subject in (5, 100, 150, 200);
run;

/*Displays table for selected subjects in data set Hosp*/
title "Listing for Select Subjects";
proc print data = Hosp;
run;

