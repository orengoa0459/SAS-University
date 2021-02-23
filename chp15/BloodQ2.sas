/* Program Blood found in /folders/myfolders/Chp15
This program list by gender the average white and red blood cell count.
Programmer: Anthony Orengo
Date Written: November 01 2019*/

title "Statistics from BLOOD by Gender"; 

proc report data = perm.Blood; 
/*Selects which variables/columns will be displayed*/
column Gender WBC RBC; 
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define Gender/ group width =7; 
define WBC/ analysis mean "Average WBC" width = 6format = comma6.0; 
define RBC/ analysis mean "Average RBC" width = 5format = 5.2; 
rbreak after / summarize;
run; 

quit;

