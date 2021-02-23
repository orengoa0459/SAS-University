/* Program Dates1910_2006 found in /folders/myfolders/Chp_9*/
/*This program analyzes a raw data file and determines the correct date 
using the yearcutoff option*/ 
/*Programmer: Anthony Orengo
Date Written: October 5, 2019;*/

/* Starts the 100 year interval from 1910 to 2006*/
options yearcutoff= 1910;

data Dates1910_2006;

/*Input with formatted variable*/
input @1 Date mmddyy8.;

/*Formats variable Date in date9 format*/
format Date date9.;

datalines;
01/01/11 
02/23/05 
03/15/15 
05/09/06
;
run;
/*Displays the listing for dataset Dates1910_2006*/
title "Listing for Dates1910_2006";
proc print data = Dates1910_2006;
run;