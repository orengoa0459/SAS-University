/* Program Date8 found in /folders/myfolders/Chp_9*/
/*This program displays the raw data file into Month, Day, Year format. */ 
/*Programmer: Anthony Orengo
Date Written: October 6, 2019;*/



data Date8;

input Day Month Year;
Date = mdy(Month, Day, Year);
format Date mmddyy10.;

datalines;
25 12 2005
1  1  1960
21 10 1946
;

/*Displays the listing for dataset Date8*/
title "Listing for Date";
proc print data = Date8;
run;