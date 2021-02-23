/* Program LowMaleFemale found in /folders/myfolders/Chp_10*/
/*This program is two separate datasets that display
cholesterol levels, of both male and female, with Chol below 100*/ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/



data lowmale lowfemale;
/*References data from data set Perm.Blood.*/
set Perm.blood; 

/*Statement to represent condition of cholesterol level below 100*/
where Chol lt 100 and Chol is not missing; 
if Gender = 'Female' then output;
else if Gender = 'Male' then output lowmale; 
run; 

/*Displays dataset Lowmale*/
title "Listing for Lowmale"; 
proc print data = lowmale; 
run; 

/*Displays dataset Lowfemale*/
title "Listing for Lowfemale"; 
proc print data = lowfemale;
run;

