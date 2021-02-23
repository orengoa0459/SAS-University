/* Program ReturnDate found in /folders/myfolders/Chp_9*/
/*This program determines the followup appointment by calculating 
VisitDate plus 5 weeks*/ 
/*Programmer: Anthony Orengo
Date Written: October 6, 2019;*/

data ReturnDate;
/*References data from data set Perm.medical.*/
set PERM.MEDICAL(keep = Patno VisitDate);
/*Computes the ReturnDay by calculating VisitDate plus 5 weeks*/
ReturnDay = intnx('week', VisitDate, 5, 'Sameday');
run;

/*Displays the listing for dataset ReturnDate*/
title "Listing for Return Date";
proc print data = ReturnDate;
/*Formats variables ReturnDay and VisitDate to date9 format*/
format ReturnDay VisitDate date9.;
run;
