/* Program Heart found in /folders/myfolders/Chp20
This program displays the a graph in scatter plot format
for variables Height and Weight. The graph will plot a smooth line 
using the pbspline method.
Programmer: Anthony Orengo
Date Written: November 18 2019*/


title "Demonstrating PBSPLINE Smoothing"; 
/*Creates a statistical graph for variables Height and Weight*
with an observation limit of 100*/
proc sgplot data = SASHelp.Heart( obs = 100); 

/*Adds a smooth line to the scatter plot using the
pbspline method*/
pbspline x = Height y = Weight; 

run;


