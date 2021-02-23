/* Program Errors found in /folders/myfolders/Chp_12*/
/*This program displays the list of subjects with X and D in their 
PartNumber*/
/*Programmer: Anthony Orengo
Date Written: October 23 , 2019*/

data UpperLower;
/*References data from data set Perm.Errors*/
set Perm.Errors;

/*Displays the list of subjects with X and D in their 
PartNumber in table format.*/
title "Listing for UpperLower";
proc print data = UpperLower;
where findc(PartNumber, 'XD', 'i');
var Subj PartNumber;
run;
