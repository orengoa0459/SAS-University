/* Program Speed found in /folders/myfolders/Chp_8*/
/*This program inputs 10 speed readings per Method A, B and C 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/


data Speed;
/* Do statement to initiate loop for methods A,B,C*/
do Method = 'A','B','C';
/*Do statement used to assign 10 speeds per method*/
do SpeedRead = 1 to 10;
	/*Inputs the speed reading from the datalines*/
	input Score@;
	output;
	/*Two "End" used to close each do statement*/
end;
end;

datalines;
250 255 256 300 244 268 301 322 256 333 
267 275 256 320 250 340 345 290 280 300 
350 350 340 290 377 401 380 310 299 399
;
run;
/*Displays results for data set Speed*/
title "Listing for Speed";
proc print data = Speed;
run;