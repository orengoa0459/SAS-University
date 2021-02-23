/* Program return found in /folders/myfolders/Chp_9*/
/*This program determines the sameday followup appointment by calculating 
VisitDate plus 6 months*/ 
/*Programmer: Anthony Orengo
Date Written: October 6, 2019;*/


data return; 
/*References data from data set Perm.medical.*/
set perm.medical(keep = Patno VisitDate); 
/*Computes the Return date by calculating VisitDate plus 6 months*/
Return = intnx(' month', VisitDate, 6,' sameday'); 
/*Formats variables VisitDate and Return to worddate format*/
format VisitDate Return worddate.; 
run;

/*Displays the listing for dataset return*/ 
title "Return Visits for Medical Patients"; 
proc print data = return;
run;

