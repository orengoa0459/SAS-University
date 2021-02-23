/* Program Missing found in /folders/myfolders/Chp_Proj
This program returns the charater and storage lengths of variable 
String.  
Programmer: Anthony Orengo
Date Written: October 26 2019*/

data Missing;
input w x y z C1 $ C2 $ C3 $;


/*Identifies all numeric elements in the array using asterisk*/
array nums{*} _numeric_;
/* Converts values of 999 to a missing numeric value*/
do i = 1 to dim(nums); 
if nums{i} = 999 then 
call missing(nums{i});
end;

/*Identifies all Character elements in the array using asterisk*/
array char{*}$_character_;
/* Converts values of NA to a missing character value*/
do loop = 1 to dim(char); 
if char{Loop}in('NA','na') then 
char{Loop}= '';
end;
/*Eliminates the variable "Loop" from the table*/ 
drop Loop;

datalines;
999 1 999 3 Fred NA Jane
8 999 10 20 Michelle Mike John
11 9 8 7 NA na Peter
;
/*Displays a table with results for dataset Missing*/
title"Listing for Missing";
proc print data= Missing;
run;