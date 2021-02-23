/* Program BloodPressure found in /folders/myfolders/Chp15
This program displays the age, systolic and diastolic 
bloodpressure by gender.
Programmer: Anthony Orengo
Date Written: November 01 2019*/


title " Subjects in Gender and Age Order";
proc report data = perm.BloodPressure;
/*Selects which variables/columns will be displayed*/
column Gender Age SBP DBP;
/*Specifies the usage for each varible while changing the display title and 
width size*/
define Gender/ order width = 7;
define Age/ order width = 4;
define SBP/ display "Systolic Blood Pressure"  width = 15;
define DBP/ display "Diastolic Blood Pressure"  width = 15;

quit;
run;



