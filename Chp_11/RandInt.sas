/* Program RandInt found in /folders/myfolders/Chp_11

This program produces 1,000 observations consisting of random
integers, ranging from 1 to 5.

Programmer: Anthony Orengo
Date Written: October 16 , 2019*/

data RandInt; 
/*Controls the observation amount limit*/
do Observation = 1 to 1000;

/*Generates a random number ranging from 1 to 5*/
RandomInteger= int(rand('uniform')* 6);

output; 
end; 
run;
/*Displays the results in table format for dataset RandInt*/
title "Listing for Random Integer";
proc freq data = RandInt;
run;
proc print data = RandInt;
run;