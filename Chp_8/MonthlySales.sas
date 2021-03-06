/* Program MonthlySales found in /folders/myfolders/Chp_8*/
/*This program computes the sum of monthly sales*/
/*Programmer: Anthony Orengo
Date Written: September 25, 2019;*/

data MonthSales; 

/*Inputs the monthly sales data from the datalines*/
input Month Sales @@;

/*If statement to set guidlines to compute the sum of available data
and to exclude unavailable data*/
/*Formula "SumSales = SumSales + sales", computes the monthly sales sum 
by adding the previous months sales with the following month sales.*/
if not missing(Sales)then 
SumSales = SumSales + sales; 
/*Retain statement to set an unchangeable value to variable SumSales*/
retain SumSales 0;

datalines; 
1 4000 2 5000 3 0 4 5500 5 5000 6 6000 7 6500 8 4500 
9 5100 10 5700 11 6500 12 7500 
;

/*Displays results for data set MonthlySales*/

title "Monthly Sales";
proc print data= MonthSales;
run;