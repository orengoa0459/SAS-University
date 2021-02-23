/* Program Study found in /folders/myfolders/Chp_12*/
/*This program displays the observations that contain spirit in 
the customers name*/ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/

data Spirited;
/*References data from data set Perm.Sales*/
set perm.sales;
/*Searches and displays customers who contain the word "Spirit"*/ 
where find(Customer,'spirit','i'); 
run; 
/*Displays a table with results for dataset Sales*/ 
title "Listing for Spirited";
proc print data = Spirited; 
run;

