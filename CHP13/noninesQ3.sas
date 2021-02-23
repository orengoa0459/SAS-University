/* Program Nonines found in /folders/myfolders/Chp_13*/
/*This program removes the number 999 from all variables
in the dataset*/ 
/*Programmer: Anthony Orengo
Date Written: October 24 , 2019*/


data nonines; 
/*Reference data set Perm.nines*/
set perm.nines; 
/*Identifies all numeric elements in the array using asterisk*/
array nums{*} _numeric_; 

do i = 1 to dim( nums); 
if nums{i} = 999 then 
call missing(nums{i});
end;
/*Eliminates the variable "i" from the table*/ 
drop i; 
run; 
/*Displays a table with results for dataset Nonines*/
title "Listing for Nonines"; 
proc print data = nonines; 
run;



