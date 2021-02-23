/* Program NewVitals found in /folders/myfolders/Chp_8*/
/*This program displays the pulse, Systolic and diastolic pressure of various age groups.*/ 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/


data NewVitals;
/*References data from temporary data set Work.Vitals*/
set WORK.Vitals;

/*If statement to evaluate whether argument is true or false*/
/*If age is less than 50, then SAS will execute subset*/
/*If age is greater than 50, the SAS will execute next subset.*/
if Age < 50 and not missing(Age) then do;

/*Executes when conditions are met for less than 50*/
if Pulse < 70 then PulseGroup = 'Low';
else PulseGroup = 'High';
if SBP < 140 then SBPGroup = 'Low';
else SBPGroup = 'High';
end;
/*Executes when conditions are met for greater than 50*/
else if Age >= 50 then do;
if Pulse < 74 then PulseGroup = 'Low';
else PulseGroup = 'High';
if SBP < 140 then SBPGroup = 'Low';
else SBPGroup = 'High';
end;
run;

/*Displays printed results of data set NewVitals*/
title "Listing for NewVitals";
proc print data = NewVitals;		
run;
