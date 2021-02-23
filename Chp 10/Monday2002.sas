/* Program Monday2002 found in /folders/myfolders/Chp_10*/
/*This program displays only AdmitDates with the year 2002 and weekday of Monday*/ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/

data Monday2002;
/*References data from data set Perm.Hosp5.*/
set Perm.Hosp5(keep = AdmitDate DOB);

/*Statement to identify specific data based on year "2002" and day "Monday"*/
where year(AdmitDate) = 2002 and weekday(AdmitDate) = 2;

/*Calculates the patients current age on the AdmitDate*/
Age= round(yrdif(DOB, AdmitDate));
run;
/*Displays listing for dataset Monday2002*/
title "Listing for Monday2002";
proc print data= Monday2002;
run;