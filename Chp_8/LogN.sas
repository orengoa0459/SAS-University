/* Program LogN found in /folders/myfolders/Chp_8*/
/*This program computes the formula Log(N) and displays results for 1 to 20 .*/ 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/
data Logs;

/*Do statement initiates loop to compute 20 rows of data with formula
Log(N). */
do N = 1 to 20;
LogN = log(N);
output;
end;

/*Displays results for data set LogN*/
title "Table Listing for Log";
proc print data = Logs;
run;







