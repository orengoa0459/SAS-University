/* Program Numbers found in /folders/myfolders/Chp_12
This program extracts the 2nd to 4th number positions from 
variable Phone to form the variable areacode*/  
/*Programmer: Anthony Orengo
Date Written: October 23, 2019*/

data Numbers; 
/*References data from data set Perm.namesmore and keeps variable
Phone.*/
set perm.namesmore(keep = phone); 
/*Sets maximum length for variable AreaCode*/
length AreaCode $ 3; 
/*Extracts the 2nd to 4th number positions from 
variable Phone*/
AreaCode = substr(Phone, 2,4); 
run; 

/*Displays a table with results for dataset Numbers*/
title "Listing for Numbers"; 
proc print data = Numbers; 
run;

