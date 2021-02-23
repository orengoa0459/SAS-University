/* Program Sales found in /folders/myfolders/Chp20
This program displays a series plot graph for variables 
SALES and Date. 
Programmer: Anthony Orengo
Date Written: November 1 2019*/

data Sales;
set sashelp.retail;
/*Drops the variable DATE from dataset retail*/
drop = Date;
/*Formats the new variable "Date" in MYD format*/
Date = mdy(Month, Day, Year);

run;
title " Series Plot of Sales by Date";
/*Creates a statistical graph for variables date and sale 
in series plot format*/
proc sgplot data = Sales;
/*Creates a series plot graph*/
series x = Date y = SALES;
/*Labels the y axis as "SALES"*/
yaxis label = 'SALES';
run;
