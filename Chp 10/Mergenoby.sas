/*Program Mergenoby found in /folders/myfolders/Chp_10*/
/*This program attempts to run 3 datasets without a "By" Statement using 
option mergenoby*/ 
/*Programmer: Anthony Orengo
Date Written: October 10 , 2019*/

/*Mergenoby statement to attempt to run program without a by statement*/
options mergenoby = nowarn; 

data NoWarn; 
/*Merges datasets purchase and inventory*/
merge perm.inventory perm.purchase; 
run; 
/*Displays results for dataset AvailModels*/
title "Listing of NoWarn";
proc print data = NoWarn; 
run; 
/*Mergenoby statement to attempt to run program without a by statement*/ 
options mergenoby = Warn; 

data Warn; 
/*Merges datasets purchase and inventory*/
merge perm.inventory perm.purchase; 
run;

/*Displays results for dataset AvailModels*/
title "Listing of Warn";
proc print data = Warn; 
run; 
/*Mergenoby statement to attempt to run program without a by statement*/ 
options mergenoby = error;
data Error; 
/*Merges datasets purchase and inventory*/
merge perm.inventory perm.purchase; 
run; 
/*Displays results for dataset AvailModels*/
title "Listing of Error"; 
proc print data = Error; 
run;


