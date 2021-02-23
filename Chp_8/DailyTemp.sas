/* Program DailyTemp found in /folders/myfolders/Chp_8*/
/*This program displays the hourly (24hrs) temperature readings
 for two cities*/
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/
data DailyTemp;

/* Do statement to initiate loop for variable City*/
do City = 'Dallas', 'Austin';
/*Do statement to assign 24 temperatures per city*/
do Hour = 1 to 24;
	/*Inputs the temperature data from the datalines*/
	input Temp@;
	output;
	/*Two "End" used to close each do statement*/
	end;
	end;

datalines;
80 81 82 83 84 84 87 88 89 89 
91 93 93 95 96 97 99 95 92 90 88 
86 84 80 78 76 77 78 
80 81 82 82 86 
88 90 92 92 93 96 94 92 90 
88 84 82 78 76 74
;
run;
/*Displays results for data set DailyTemp*/
title "24hr Temperature Reading";
proc print data = DailyTemp;
run;