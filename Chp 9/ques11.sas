/* Program Interval found in /folders/myfolders/Chp_9*/
/*This program computes the number of interval quarters from 
a given date to VistDate*/ 
/*Programmer: Anthony Orengo
Date Written: October 6, 2019;*/



data Interval; 
/*References data from data set Perm.medical.*/
set perm.medical; 
/*Computes the number of interval quarters*/
Quarters = intck(' qtr',' 01Jan2006'd, VisitDate); 
run; 

/*Displays the listing for dataset Interval*/
title "Listing of Interval"; 
proc print data = Interval;
run;

