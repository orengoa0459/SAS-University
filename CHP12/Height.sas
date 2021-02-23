/* Program Names and More found in /folders/myfolders/Chp_12*/
/*This program converts height in feet to inches*/ 
/*Programmer: Anthony Orengo
Date Written: October 24 , 2019*/

data Height;
set perm.namesmore (Keep= Height);

Height = (Compress(Height,'FTIN', 'i'));
/*Scans and extracts the first portion of the Height(Feet)*/ 
FT= input(scan(Height,1, ''),12.);
/*Scans and extracts the second portion of the Height(Inches)*/
IN = input(scan(Height,2,''),12.);
/*Sets condition for observations missing Inches,
to compute formula HTInches * FT*/
if missing (IN) then HTInches = 12 *FT;
/*Sets condition to compute formula if inches are present 
in the observation*/
else HtInches = 12 * FT + IN;

/*Eliminates the variables FT and IN*/
drop FT IN;
run; 

title"Listing for Height";
proc print data = Height;
run;