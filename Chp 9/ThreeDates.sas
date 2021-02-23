/* Program ThreeDates found in /folders/myfolders/Chp_9*/
/*This program displays the year difference between three dates*/ 
/*Programmer: Anthony Orengo
Date Written: October 5, 2019;*/

data ThreeDates;
/*Input with formatted variables*/
input @1 Date1 mmddyy10.
@12 Date2 mmddyy10.
@23 Date3 date9.;

/*Formats variables Date1, Date2, Date3 in mmddyy10 format*/
format Date1 mmddyy10. Date2 mmddyy10. Date3 mmddyy10.;

/*Computes the year difference between Date1 and Date2*/
Year12 = yrdif(Date1,Date2);
/*Computes the year difference between Date2 and Date3*/
Year23 = yrdif(Date2,Date3);


datalines;
01/03/1950 01/03/1960 03Jan1970 
05/15/2000 05/15/2002 15May2003 
10/10/1998 11/12/2000 25Dec2005
;

/*Displays the listing for dataset ThreeDates*/
title "Listing for ThreeDates";
proc print data = ThreeDates;
run;