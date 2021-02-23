/* Program Blood found in /folders/myfolders/Chp15
This program displays the mean cholesterol by gender and blood type.
Programmer: Anthony Orengo
Date Written: November 01 2019*/


title "Mean Cholesterol by Gender and Blood Type"; 

proc report data = perm.Blood; 
/*Selects which variables/columns will be displayed*/
column Gender BloodType Chol; 
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define Gender/ group width = 7;
define BloodType/ group "Blood Type" width = 10;
define Chol/ analysis mean "Mean Cholesterol" Width = 15 format= 5.1;

run;
quit;