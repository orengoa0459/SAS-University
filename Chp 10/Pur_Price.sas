/* Program Pur_Price found in /folders/myfolders/Chp_10*/
/*This program calculates the total price for the quantity of models purchased */ 
/*Programmer: Anthony Orengo
Date Written: October 9 , 2019*/


/*Sorts data by Model for dataset purchase*/
proc sort data = Perm.purchase out = purchase; 
by Model;
run; 

/*Sorts data by Model for dataset inventory*/
proc sort data = Perm.inventory out = inventory;
by Model; 
run; 


data pur_price; 
/*Merges datasets purchase and inventory by variable model*/
merge perm.inventory perm.purchase(in=InPurchase); 

/*Computes the total cost based on the quantity of models purchased*/ 
if InPurchase; 
TotalPrice = Quantity* Price; 

/*Formats the total price using the Dollar8 Format*/
format TotalPrice dollar8.2; 
run; 
/*Displays results for dataset Pur_Price*/
title "Listing for Pur_Price"; 
proc print data = pur_price; 
run;

