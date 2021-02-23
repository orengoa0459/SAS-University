/* Program Date9 found in /folders/myfolders/Chp_9*/
/*This program displays the raw data file in the date format 
mmddyy10.*/ 
/*Programmer: Anthony Orengo
Date Written: October 6, 2019;*/

data date9;

input Day Month Year;
/*Function to replace a missing day in the raw data file
with 15. Else, will display MDY of raw data file*/
if missing( Day) then Date = mdy( Month, 15, Year); 
else Date = mdy( Month, Day, Year);

/*Formats variable Date with the date format mmddyy10*/
format Date mmddyy10.;


datalines;
25 12 2005
.   5 2002
12 8  2006
;
title "Listing for Date";
proc print data = date9;
run;