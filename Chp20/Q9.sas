/* Program Heart found in /folders/myfolders/Chp20
This program displays the a graph in scatter plot format
for variable Cholesterol. The graph will display a bar graph in 
histogram format.
Programmer: Anthony Orengo
Date Written: November 18 2019*/



title "Histogram for Cholesterol";
/*Creates a statistical graph for variable Cholesterol*/ 
proc sgplot data = SASHelp.Heart; 
/*Produces a bargraph in histogram format*/
histogram Cholesterol; run;



