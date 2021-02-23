/* Program Hosp found in /folders/myfolders/Chp_9*/
/*This program determines the patients age on 01 Jan 2006 and
the current age as of today*/ 
/*Programmer: Anthony Orengo
Date Written: October 5, 2019;*/


data Hosp;
/*References data from data set Perm.Hosp*/ 
set Perm.Hosp(keep=DOB);
	/*Computes the patients current age on 01 Jan 2006*/
	AgeJan1 = yrdif(DOB,'01Jan2006'd);
	/*Computes the patients current age as of today*/
	AgeToday = yrdif(DOB,today());
	
run;

/*Displays the listing for dataset Hosp*/
title "Listing for Hosp";
proc print data = Hosp;
run;