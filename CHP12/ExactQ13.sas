/* Program Exact found in /folders/myfolders/Chp_12*/
/*This program displays results in to different tables for SSN#'s 
that are identical and that are within 25 of each other*/
/*Programmer: Anthony Orengo
Date Written: October 23 , 2019*/

data exact within25; 
/*References data from data set Perm.Social*/
set perm.Social; 

/*Condition set for if both Social security numbers match,
they will be displayed in dataset Exact*/ 
if SS1 eq SS2 then output exact; 
/*Condition set for if both Social security numbers are within 25 
of each other than list in dataset within 25*/ 
else if spedis(SS1,SS2) le 25 and 
not missing(SS1) and 
not missing(SS2) 
then output within25; 
run;
/*Displays a table with results for dataset Exact*/ 
title "Listing for Exact"; 
proc print data = exact; 
run; 
/*Displays a table with results for dataset Within25*/ 
title "Listing of Within 25"; 
proc print data = within25; 
run;

