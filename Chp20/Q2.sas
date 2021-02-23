/* Program Heart found in /folders/myfolders/Chp20
This program displays mean average for variable Cholesterol
by Sex using a vertical bar graph.
Programmer: Anthony Orengo
Date Written: November 18 2019*/



title "Mean Cholesterol by Sex"; 
/*Creates a statistical graph for variables Sex and Cholesterol*/
proc sgplot data = SASHelp.Heart; 
/*Creates a vertical bar graph using the mean average 
for variable Cholesterol by variable Sex*/
vbar Sex / response = Cholesterol stat = mean; 
run;