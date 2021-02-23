/* Program Hosp2 found in /folders/myfolders/Chp_9*/
/*This program displays the frequencies of days of the week, month and 
year for the AdmitDate*/ 
/*Programmer: Anthony Orengo
Date Written: October 5, 2019;*/


data Hosp2;
/*References data from data set Perm.Hosp.*/
set Perm.Hosp (keep = AdmitDate);
run;

/*Displays frequencies for dataset Hosp2*/
title "Admissions before July 15, 2002";
proc print data = Hosp2; 
where AdmitDate le '15Jul2002'd and 
AdmitDate is not missing; 
run;

