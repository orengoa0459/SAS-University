/* Program LogitPlot found in /folders/myfolders/Chp_8*/
/*This program computes the formula Logit = log(p /(10 - p)) by using an interative loop
in increments of .5*/ 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/


data Logitplot;
/*Do statement initiates loop to compute data in 
increments of .5 with the   = log(p /(10 - p)) */
do p = 0 to 1 by .05;

Logit = log(p /(10 - p));
output;
end;
run;
/*Displays results for data set LogitPlot*/
title "Logit Plot Data";
proc sgplot data = Logitplot;
series x = p y = Logit;
run;