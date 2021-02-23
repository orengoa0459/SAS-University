/* Program Heart found in /folders/myfolders/Chp20
This program displays the a graph in scatter plot format
for variables Height and Weight. The graph will use regression lines 
(CLI/CLM)
Programmer: Anthony Orengo
Date Written: November 18 2019*/

title "Scatter Plot with Regression Line and Confidence Limits"; 

proc sgplot data = SASHelp.Heart; 
/*Allows for regression lines on the plot (Confidence Limit for Mean "CLM"/
Confidences limits for Indivdual Lines "CLI")*/
reg x = Height y = Weight / CLM CLI; 
run;


