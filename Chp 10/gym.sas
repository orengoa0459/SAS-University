/* Program Percent found in /folders/myfolders/Chp_10*/
/*This program displays the cost percentage for the variable "Fee"./ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/

/*Creates a dataset called means, consisting of one observation and one variable.*/
proc means data = perm.gym noprint; 
var fee; 
output out = Means(drop =_type_ _freq_) 
Mean = / autoname; 
run; 

data Percent; 
/*References data from data set Perm.gym.*/
set Perm.gym; 
if _n_ = 1 then set Means;
/*Formula to calculate the cost perscentage based on the variable "Fee"*/ 
CostPercent = round( 100* fee / Fee_Mean); 
drop Fee_Mean; 
run; 

/*Displays results for dataset Percent*/
title "Listing for Percent"; 
proc print data = Percent; 
run;

 