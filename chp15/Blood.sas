/* Program Blood found in /folders/myfolders/Chp15
This program list the first 5 observations of data set Blood, and displays the selected
variables in table format.   
Programmer: Anthony Orengo
Date Written: November 01 2019*/

title "First 5 Observations from Blood Data Set"; 

proc report data = perm.Blood(obs = 5); 
/*Selects which variables/columns will be displayed*/
column Subject WBC RBC; 
/*Specifies the usage for each varible while changing the display title and 
width size*/
define Subject/display "Subject Number" width =7; 
define WBC/"White Blood Cells" width = 6format = comma6.0; 
define RBC/"Red Blood Cells" width = 5format = 5.2; 
run; 

quit;

