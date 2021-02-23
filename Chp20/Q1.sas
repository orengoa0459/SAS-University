/* Program Heart found in /folders/myfolders/Chp20
This program displays the statistical frequency for variable "Status"
from dataset heart in vertical bar format.
Programmer: Anthony Orengo
Date Written: November 18 2019*/



title "Bar Chart for the Variable Status"; 
/*Creates a statistical graph for variable status
in frequency value*/
proc sgplot data = SASHelp.Heart; 
/*Creates a vertical bar graph for variable status*/
vbar Status; 
run;

