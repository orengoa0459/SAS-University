/* Program Study found in /folders/myfolders/Chp_12*/
/*This program converts kilograms to pounds for the 
observations in variable Weight*/ 
/*Programmer: Anthony Orengo
Date Written: October 23 ,2019*/

data study;
/*Reference data set Perm.Study*/
set perm.Study (keep = Weight rename = (Weight = WeightTotal));

Weight = input(compress(WeightTotal,,'kd'),12.);
if find(WeightTotal,'KG','i') then Weight = round(2.2*Weight, .1);
else if find(WeightTotal, 'LB','i') then Weight = round(Weight, .1);
run;
/*Displays a table with results for dataset Study*/
title"Listing for Study";
proc print data = study;
run;


