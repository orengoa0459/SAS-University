/* Program Names and More found in /folders/myfolders/Chp_12*/
/*This program removes any extra spaces and blanks from the observations */ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/

data names_and_more; 
/*References data from data set Perm.namesmore.*/
set perm.namesmore;
/*Removes extra spaces and blanks from the observations*/ 
Name = compbl(Name); 
Phone = compress(Phone,,' kd'); 
run; 

/*Displays a table with results for dataset name and more*/
title "Listing for Names and More"; 
proc print data = names_and_more; 
run;

