/* Program NewPrices found in /folders/myfolders/Chp_10*/
/*This program updates the price of specific models and displays results */ 
/*Programmer: Anthony Orengo
Date Written: October 10 , 2019*/ 

/*Data set created with updated price for the listed bicycle models*/
data UpdatePrice;

input Model $ Price;
format Price dollar10.2;
datalines;
M567 25.95
X999 35.99
;

/*Sorts data by Model for dataset Inventory*/
proc sort data = perm.inventory out = perm.inventory;

run; 

data NewPrices;
/*Updates the new current price of bicycle model*/
update perm.Inventory UpdatePrice;
by Model;

run;
/*Displays results for dataset NewPrices*/
title "Listing for NewPrices";
proc print data = NewPrices;
run;
