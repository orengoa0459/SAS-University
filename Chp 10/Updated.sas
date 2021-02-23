/* Program Updated found in /folders/myfolders/Chp_10*/
/*This program is two separate datasets, merged together to form an 
updated table by model*/ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/

/*Displays results for dataset Inventory*/
title "Listing for Inventory"; 
proc print data = Perm.inventory; 

/*Displays results for dataset NewProducts*/
run; title "Listing for NewProducts"; 

proc print data = Perm.newproducts; 
run; 

/*Merges both datasets together*/
data updated; 
set Perm.inventory Perm.newproducts; 
run; 
/*Sorts the dataset "updated" by Model*/
proc sort data = updated; 
by Model; 
run; 

/*Displays results for dataset Updated*/
title "Listing for updated"; 
proc print data = updated; 
run;



