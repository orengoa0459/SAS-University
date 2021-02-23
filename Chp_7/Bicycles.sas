/* Program Bicycles found in /folders/myfolders/Chp_7*/
/*This program displays data for select bikes and cost*/ 
/*Programmer: Anthony Orengo
Date Written: September 23, 2019;*/

data bicycles;

/*References data from data set Permanent data set Bicycles*/
set Perm.Bicycles;

/*Displays printed results of data set*/
title "Listing for Selected Bicycles"; 
proc print data = bicycles; 

/* "Where" statement to select specific model bikes with specific unit cost.*/
where Model = "Road Bike" and UnitCost > 2500 or Model = "Hybrid" and UnitCost > 660; 
run;