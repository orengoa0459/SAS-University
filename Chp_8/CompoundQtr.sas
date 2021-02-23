/* Program CompoundQtr found in /folders/myfolders/Chp_8*/
/*This program computes the quarterly compound interest of yearly deposits
until total value equals $30000 or greater.*/
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/



data CompoundQtr;

/*Represents the yearly interest rate*/
Interest = .0425; 

/*Do statement to initiate loop until total equals 30000*/
do Year = 1 to 999 until (Total ge 30000); 

/*Represents the total yearly deposit*/
Total + 1000; 

do Quarter = '1st','2nd','3rd','4th'; 

/*Formula that computes the total amount deposited including 
interest.*/
Total + Total*(.0425/ 4); 
output; 
end; 
end;
/*Sets the variable "Total" to a dollar format*/
format Total dollar10.2;
run;
	
/*Displays results for data set CompoundQtr*/
title "Listing for CompoundQtr";
proc print data = CompoundQtr;
run;