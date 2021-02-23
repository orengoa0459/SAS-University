/* Program Dates found in /folders/myfolders/Chp_9*/
/*This program displays the current age of patient on the  visit date*/ 
/*Programmer: Anthony Orengo
Date Written: October 5, 2019;*/

data Dates;

/*Input with formatted variables*/
input @1 Subject $3.
	@4 DOB mmddyy10.
	@14 VisitDate date9.;
Age = yrdif(DOB,VisitDate);
datalines;
00110/21/195011Nov2006 
00201/02/195525May2005 
00312/25/200525Dec2006
;

run;

/*Displays the listing for dataset Dates*/
title "Listing for Dates";
proc print data = Dates;

/*Formats variables DOB and VisitDate in date9 format*/
format DOB Date9. VisitDate Date9.;
run;



