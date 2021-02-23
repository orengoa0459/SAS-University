/* Program BloodPressure found in /folders/myfolders/Chp15
This program determines which subjects are hypertensive and separates the 
results by gender.
Programmer: Anthony Orengo
Date Written: November 01 2019*/

title "Hypertensive Patients";
proc report data = perm.bloodpressure (obs = 8);
/*Selects which variables/columns will be displayed*/
column Gender SBP DBP Hypertensive;
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define Gender/ Width=7;
define SBP/ Display width= 6;
define DBP/ Display width= 6;
define Hypertensive/ computed "Hypertensive?" width = 15;
/*Compute block*/
/*Allows for new variables to be computed in proc report*/
compute Hypertensive / character length= 3; 
/*Condition set to determine which subjects are hypertensive by gender*/

if Gender = 'F' and (SBP > 138 or DBP > 88)
then Hypertensive= 'Yes';
else Hypertensive = 'No';
if Gender = 'M' and (SBP >140 or DBP > 90)
then Hypertensive = 'Yes';
else Hypertensive = 'No';
/*Ends the compute block function*/
endcomp;
run;
quit;



