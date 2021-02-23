/* Program Integers found in /folders/myfolders/Chp_8*/
/*This program computes the square root of a number
until the square outcome equals 100.*/
/*Programmer: Anthony Orengo
Date Written: September 25, 2019;*/

data Integers;
/*Do statement to initiate loop until Square equals 100*/
do Int = 1 to 999 until (Square >= 100);
	
	/*Formula computes the Square root of number*/
	Square = Int **2;
	output;	
	end;

run;

/*Displays results for data set Integers*/
title "Square Root";
proc print data = Integers;
run;