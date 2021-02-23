/* Program Region found in /folders/myfolders/Chp14
This program list and sums the Quantity/TotalSales by each region.    
Programmer: Anthony Orengo
Date Written: October 28 2019*/


/*References data from data set Perm.Sales*/
proc sort data = perm.Sales out = Sales;
by Region;

run;
/*Displays data by region in table format*/
title "Sales Figures from the Sales Data Set";
proc print data = sales label;
by Region;
id Region;
var Quantity TotalSales;
/*Computes the total for variables Quantity and TotalSales*/
sum Quantity TotalSales;

run;


