/* Program Convert found in /folders/myfolders/Chp_11

This program converts character values to numeric values,
and numeric values to character values.

Programmer: Anthony Orengo
Date Written: October 17 , 2019*/

data Convert;

/*References data from dataset Char_Num*/
set perm.Char_Num; 

/*Converts character values to numeric values*/	
NumAge = input(Weight,8.);
NumWeight = input(Weight,8.);

/*Converts numeric val;ues to character values*/
CharSS = put(SS,ssn11.);
CharZip = put(Zip,z5.);
run;

/*Displays the results in table format for dataset Convert*/
title "Listing for Convert";
proc print data = Convert;
run;




