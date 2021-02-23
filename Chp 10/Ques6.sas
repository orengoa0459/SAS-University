/* Program Updated found in /folders/myfolders/Chp_10*/
/*This program sorts two separate datasets by variable model*/ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/

/*Sorts the dataset "Inventory" by Model*/
proc sort data = Perm.Inventory; 
by Model; 
run; 

/*Sorts the dataset "NewProducts" by Model*/
proc sort data = Perm.NewProducts; 
by Model; 
run; 

/*Merges datasets Inventory and NewProducts*/
data Updated;
set Perm.Inventory Perm.Newproducts;
by Model;
run;

/*Displays results for dataset Updated*/
title "Listing for Updated";
proc print data = Updated;
run;