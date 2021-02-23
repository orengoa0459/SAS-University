/* Program Survey found in folders/myfolders/chp19
This program initiates a trace record and produces 
5 highest and 5 lowest values of variables Age and Salary,
using proc univariate.
Programmer: Anthony Orengo
Date Written: November 14 2019*/

/*Initiates the trace record*/
ods trace on;
/*List the 5 highest and 5 lowest values in dataset survey3
using variables Age and Salary*/
proc univariate data = perm.survey3;

var Age Salary;
run;
/*Ends the trace record*/
ods trace off;
/*Selects the moments table to display*/
ods select moments;
/*List the 5 highest and 5 lowest values in dataset survey3
using variables Age and Salary*/
proc univariate data = perm.survey3;
var Age Salary;
run;
/*Closes the ods listing output*/
ods listing close;

/*Sends the output to a SAS dataset*/
ods output ttests = T_Test_Data;
proc ttest data = Perm.Survey3;

run;
ods listing;
/*Displays the listed data for dataset T_Survey_Data
in table format*/
title "Listing of T_Survey_Data";
proc print data = T_Test_Data;
run;