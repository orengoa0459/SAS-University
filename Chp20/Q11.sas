/* Program Heart found in /folders/myfolders/Chp20
This program displays the a graph in horizontal box plot format
for variable Cholesterol broken up into groups by Sex. 
Programmer: Anthony Orengo
Date Written: November 18 2019*/

title "Horizontal Box Plots"; 
/*Creates a statistical graph for variable Cholesterol*/
proc sgplot data = SASHelp.Heart; 
/*Creates a horizontal box plot for variable Cholesterol
broken up into groups by Sex*/
hbox Cholesterol / group = Sex;
run;

