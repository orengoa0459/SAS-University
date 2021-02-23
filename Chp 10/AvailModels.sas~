/* Program AvailModels found in /folders/myfolders/Chp_10*/
/*This program determines which models were not purchased */ 
/*Programmer: Anthony Orengo
Date Written: October 10 , 2019*/ 


/*Sorts data by Model for dataset purchase*/
proc sort data = perm.purchase out = perm.purchase; 
by Model; 
run; 
/*Sorts data by Model for dataset inventory*/
proc sort data = perm.inventory out = perm.inventory;
by Model; 
run; 

data AvailModels;
/*Merges datasets purchase and inventory by availability of model*/
merge perm.inventory(in = InInventory) perm.purchase( in = Inpurchase); 
by Model; 
/*Statement to set conditions to keep non-purchased models and price*/
if InInventory and not InPurchase; 
keep Model Price;

run; 
/*Displays results for dataset AvailModels*/
title "Listing for Available Models"; 
proc print data = AvailModels; 
run;
