/* Program BloodPressure found in /folders/myfolders/Chp15
This program determines which subjects are above the age of 50.
Programmer: Anthony Orengo
Date Written: November 01 2019*/

title "Patient Age Groups";

proc report data = Perm.bloodpressure; 
/*Selects which variables/columns will be displayed*/
column Gender Age AgeGroup; 
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define Gender / width = 6; 
define Age / display width = 5; 
define AgeGroup / computed "Age Group"; 
/*Compute block*/
/*Allows for new variables to be computed in proc report*/
compute AgeGroup / character length = 5; 
/*Condition set to determine which subjects are above the age of 50*/
if Age gt 50 then AgeGroup = '> 50'; 

else if not missing( Age) then AgeGroup = '<= 50';
/*Ends the compute block function*/
endcomp; 
run; 
quit;

