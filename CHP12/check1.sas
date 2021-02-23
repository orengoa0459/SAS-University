/* Program Study found in /folders/myfolders/Chp_12*/
/*This program checks for observations with errors that violate 
two rules. Variable Subj contains only digits and VAriable
PartNumber contains uppercased L and S.*/ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/


data check1;
/*References data from data set Perm.Errors*/
set perm.Errors;

where notdigit(Subj)
or notalnum(PartNumber);
run;

/*Displays a table with results for dataset Check1*/ 
title "Listing for Check1";
proc print data = check1;
run;