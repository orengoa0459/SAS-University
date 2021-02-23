/* Program convert found in /folders/myfolders/Chp_12*/
/*This program removes any extra spaces and blanks from the observations */ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/

data convert; 

/*References data from data set Perm.namesmore.*/
set perm.namesmore(keep = Mixed); 

/*Input function to convert character to numeric value*/
Integer = input(scan(Mixed,1,'/'),8.); 
Numerator = input(scan(Mixed,2,'/'),8.); 
Denominator = input(scan(Mixed,3,'/'), 8.); 
if missing(Numerator) then Price = Integer; 
else Price = Integer + Numerator / Denominator;
Price = round(Price,.001); 
/*Removes variables Numerator Denominator Integer*/ 
drop Numerator Denominator Integer; 
run;
/*Displays a table with results for dataset Convert*/
title "Listing for Convert"; 
proc print data = convert; 
run;

