/* Program College found in /folders/myfolders/Chp18
This program demostrates the use of the pctsum function for 
dataset Sales.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

title "Demonstrating the Pctsum Statistic";
/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.sales 
/*Rounds the statiscal data*/
format = 6.;
class Region; 
var Quantity TotalSales; 

/*Identifies which variables will be used in the 
 table report while using the pctsum function*/
table (Region ALL), (Quantity)*(pctsum* f = pctfmt7.) TotalSales*(pctsum* f = pctfmt7.);
/*Changes the title of the all row to Total*/
keylabel ALL = 'All' 
/*Changes the title of 'pctsum' to Percent of Total*/
pctsum = 'Percent of Total';
;
/*Changes the title of variable TotalSales to Total Sales*/
label TotalSales = 'Total Sales';

run;
