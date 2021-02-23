/* Program Errors found in /folders/myfolders/Chp_12*/
/*This program Identifies and list any Subjects with digit errors*/
/*Programmer: Anthony Orengo
Date Written: October 23 , 2019*/

/*Displays the list of subjects with digit errors in 
table format.*/
title "Listing for Subjects with Digit Errors"; 
proc print data = perm.errors; 
/*Identifies and list any Subjects with digit errors*/
where anydigit(Name);
var Subj Name;
run;

