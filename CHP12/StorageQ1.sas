/* Program Storage found in /folders/myfolders/Chp_12*/
/*This program determines the storage length of a string for the 
variables listed below by using the LENGTHC function*/ 
/*Programmer: Anthony Orengo
Date Written: October 22 , 2019*/ 


data Storage;
length A $ 4 B $ 4; 
Name = 'Goldstein'; 
AandB = A || B; 
Cat = cats(A,B); 
if Name = 'Smith' then Match = 'No';
else Match = 'Yes'; 
Substring = substr( Name, 5,2); 

/*Lengthc function returns thwe storage length of a string*/
L_A = lengthc(A); 
L_B = lengthc(B); 
L_Name = lengthc(Name); 
L_AandB = lengthc(AandB); 
L_Cat = lengthc(Cat); 
L_Match = lengthc(Match); 
L_Substring = lengthc(Substring); 
run; 

/*Displays a table with results for dataset Storage*/
title "Lengths of Character Variables"; 
proc print data = Storage; 
var L_:; 
run; 

