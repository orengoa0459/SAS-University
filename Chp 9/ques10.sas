/* Program Hosp5 found in /folders/myfolders/Chp_9*/
/*This program computes the number of interval boundaries from admit date to
a given date*/ 
/*Programmer: Anthony Orengo
Date Written: October 6, 2019;*/

data Hosp5;
/*References data from data set Perm.Hosp.*/
set Perm.Hosp5;
/*Computes the number of interval boundaries from AdmitDate 
to 31Dec2007*/
MonthsDec = intck('month',AdmitDate,'31Dec2007'd);
/*Computes the number of interval boundaries from AdmitDate 
to Today*/
MonthToday = intck('month', AdmitDate, Today());
run;

/*Displays the listing for dataset Hosp5*/
title "Listing for Hosp5";
proc print data = Hosp5;
run;