/* Program concat found in /folders/myfolders/Chp_12*/
/*This program displays two variables that are joined together
and separated by a hyphen*/ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/

data concat; 
/*References data from data set Perm.study.*/
set perm.study(keep = Group Subgroup); 
/*Set character length for variable combined*/
length Combined $ 3; 
/*Combines both variables with a hyphen to separate*/
Combined = catx('-', Group,Subgroup); 
run; 
/*Displays a table with results for dataset Study*/
title "Listing for Concat"; 
proc print data = concat; 
run; 

data concat2; 
/*References data from data set Perm.study.*/
set perm.study( keep = Group Subgroup);
/*Set character length for variable combined*/
length Combined $ 3; 
/*Combines both variables with a hyphen to separate*/
Combined = trim( Group) | | '-' | | put( Subgroup, 1.); 
run; 
 
/*Displays a table with results for dataset Study*/ 
title "Listing for Concat2";
proc print data = concat2; 
run;

