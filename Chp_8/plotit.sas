/* Program plotit found in /folders/myfolders/Chp_8*/
/*This program computes the formula y = 3*x**2 - 5*x + 10 by using an interative loop
in increments of .10*/ 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/


Data plotit;

/*Do statement initiates loop to compute 10 rows of data in 
increments of .10 with the formula y = 3*x**2 - 5*x + 10; */
do x = 0 to 10 by .10;

	y = 3*x**2 - 5*x + 10;
	output;
	end;
run;
/*Displays results for data set ploit*/
title "Problem 7"; 
proc sgplot data = plotit; 
series x = x y = y; 
run;

