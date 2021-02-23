/* Program CompoundInt found in /folders/myfolders/Chp_8*/
/*This program computes the compound interest of yearly deposits
until total value equals $30000 or greater.*/
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/

data CompInt;
/*Do statement to initiate loop until total equals 30000*/
do Year = 1 to 999 until (Total >= 30000); 

/*Represents the total yearly deposit*/
Total + 1000;

/*Formula that computes the total amount deposited including 
interest.*/
Total + Total*(.0425); 
output; 
end;
 
/*Sets the variable "Total" to a dollar format*/
format Total dollar10.2;
run;

/*Displays results for data set CompInt*/
title "Listing for CompInt";
proc print data = CompInt;
run;