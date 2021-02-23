/* Program Difference found in /folders/myfolders/Chp_11

This program produces a Graph consiting of daily changes 
in stock price.

Programmer: Anthony Orengo
Date Written: October 16 , 2019*/

data Difference;
/*References data from dataset Stocks while keeping 
varibales Price and Date*/
set Perm.Stocks(keep = Price Date);

/*Sets a difference condition to compute daily changes 
in price*/
Diff_Price = dif(Price);
run;


/*Displays the results in Graph plot format for dataset Difference*/
title "Plot of Daily Price Differences"; 
proc sgplot data = Difference;

/*Sets X and Y axis to specific variables*/
series x = Date y = Diff_Price; 
run;

