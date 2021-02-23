/* Program Medical found in /folders/myfolders/Chp_9*/
/*This program displays the frequencies of days of the week, month and 
year for dataset Medical*/ 
/*Programmer: Anthony Orengo
Date Written: October 5, 2019;*/


data Medical;
/*References data from data set Perm.Hosp.*/
set PERM.medical(keep = VisitDate);
/*Function to extract day, week, and month of VisitDate*/
Day = weekday( VisitDate); 
Month = month( VisitDate); 
Year = year( VisitDate); 

/* Formats the days to represent a numeric value*/
proc format; value days 1 =' Sun' 
2 =' Mon' 3 =' Tue' 
4 =' Wed' 5 =' Thu' 
6 =' Fri' 7 =' Sat'; 
/* Formats the months to represent a numeric value*/
value months 1 =' Jan' 2 =' 
Feb' 3 =' Mar' 4 =' Apr' 
5 =' May' 6 =' Jun' 
7 =' Jul' 8 =' Aug' 
9 =' Sep' 10 =' Oct' 
11 =' Nov' 12 =' Dec'; 
run; 
/*Displays frequencies for dataset Hosp*/
title "Frequencies for Visit Date"; 
proc freq data = Medical; 
tables Day Month Year / nocum nopercent; 
format Day days. Month months.; 
run;