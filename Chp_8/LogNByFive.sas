/* Program LogNByFive found in /folders/myfolders/Chp_8*/
/*This program computes the formula Log(N) and displays results for 100 rows in 
increments of 5.*/ 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/
data Logs;

/*Do statement initiates loop to compute 100 rows of data in 
increments of 5 with the formula Log(N). */

do N = 5 to 100 by 5;
LogN = log(N);
output;
end;


/*Displays results for data set Logs*/
title "Table Listing for Log";
proc print data = Logs;
run;







