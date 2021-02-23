/* Program Heart found in /folders/myfolders/Chp20
This program displays a transparency bar vertical bar graph
using the mean average of Height by variable Sex.
Programmer: Anthony Orengo
Date Written: November 18 2019*/


title "Demonstrating Transparency and Bar Width"; 
/*Creates a statistical graph for variables Height and Sex*/
proc sgplot data = SASHelp.Heart; 

/*Creates two vertical bar graphs using the transparency methos*/
vbar Sex / Response = Height stat = mean barwidth =.8; 

vbar Sex/ Response = Weight barwidth =.25 transparency =.2 stat = mean; 
run;

