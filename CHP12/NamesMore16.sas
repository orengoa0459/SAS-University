/* Program Names and More found in /folders/myfolders/Chp_12*/
/*This program removes any extra spaces and blanks from the observations and 
sets a specific length for the Last Name*/ 
/*Programmer: Anthony Orengo
Date Written: October 24 , 2019*/


data Names_and_More;
/*References data from data set Perm.namesmore.*/
set perm.NamesMore;
/*Sets length for the last name for variable Name*/
length Last $ 15;
/*Removes extra spaces and blanks in variable Name*/
Name = compbl(Name);
Last = Scan(Name,2, ' ');
/*Drops the variable Last from the table*/
drop Last;
run;
title"Listing for Names and More";
Proc print data= Names_and_More;
run;