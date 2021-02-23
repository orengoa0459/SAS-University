/* Program Moving found in /folders/myfolders/Chp_11

This program produces a Graph consiting of the three day moving 
average for stock price.

Programmer: Anthony Orengo
Date Written: October 17 , 2019*/

data Moving; 
/*Displays the results in Graph plot format for dataset Difference*/
set Perm.stocks; 
/*Computes the differences between one obeservation to the next.*/
Price1 = lag( Price); 
Price2 = lag2( Price); 
Average = mean( Price, Price1, Price2); 
run; 
/*Displays the results in Graph plot format for dataset Moving*/

title "Plot of Price and Moving Average"; 
proc sgplot data = Moving; 
/*Sets X and Y axis to specific variables*/
series x = Date y = Price; 
series x = Date y = Average; 
run;

