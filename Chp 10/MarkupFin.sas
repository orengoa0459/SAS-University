/* Program Markup_Prices found in /folders/myfolders/Chp_10*/
/*This program merges two datasets by variable Manuf, and computes 
the new total cost after price markup../ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/


/*Sorts data by Manufacturer for dataset bicycles*/
proc sort data = perm.bicycles;
by Manuf;
run;
/*Sorts data by Manufacturer for dataset markup*/
proc sort data = perm.markup;
by Manuf;
run;

data Markup_Prices;
/*Merges datasets markup and bicycles by manufacturer*/
merge perm.bicycles perm.markup;
by Manuf;
/*Formula to compute the new total cost of bicycle after markup price*/
NewTotal = TotalSales * Markup;
run;

/*Displays results for dataset Markup_Prices*/
title "Listing for Markup_Prices";
proc print data = Markup_Prices;
run;
