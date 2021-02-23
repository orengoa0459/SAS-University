/* Program Convert found in /folders/myfolders/Chp_11

This program converts character values to numeric values,
and numeric values to character values.

Programmer: Anthony Orengo
Date Written: October 17 , 2019*/


data convert; 
/*References data from dataset Char_Num and renames the variables*/
set perm.Char_Num( rename = (Age = Char_Age 
Weight = Char_Weight Zip = 
Num_Zip SS = Num_ss)); 

/*Converts character values to numeric values*/	
Age = input( Char_Age, 8.); 
Weight = input( Char_Weight, 8.);
/*Converts numeric values to character values*/
SS = put( Num_SS, ssn11.); 
Zip = put( Num_Zip, z5.); 

/*Drops variables beginning with "Char" and "Num"*/
drop Char_: Num_:; 
run; 
/*Displays the results in table format for dataset Convert*/
title "Listing for Convert"; 
proc print data = convert; 
run;




