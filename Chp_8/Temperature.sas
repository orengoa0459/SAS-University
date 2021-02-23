/* Program Temperature found in /folders/myfolders/Chp_8*/
/*This program displays 1 week of temperature data Mon-Sun;
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/

data Temperatures;

/*Do statement to initiate loop to input Temperature data 
from Mon to Sun*/
do Day = 'Mon','Tue','Wed','Thur','Fri','Sat','Sun';
	/*Inputs temperature data from datalines*/
	input Temp @;


output;
end;
datalines;
70 72 74 76 77 78 85
;
/*Displays results for data set Temperatures*/
run;
title "Listing for Temperatures";
proc print data = Temperatures;
run;