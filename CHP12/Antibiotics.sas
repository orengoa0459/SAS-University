/* Program Antibiotic found in /folders/myfolders/Chp_12*/
/*This program identifies which comments have the word
antibiotic listed in it*/
/*Programmer: Anthony Orengo
Date Written: October 23 , 2019*/

/*Displays results in table format for dataset medical*/
title "Listing for Comments with Antibiotics"; 
proc print data = perm.Medical; 

/*Identifies which comments have the word antibiotic in it*/
where findw(Comment, 'antibiotics');

run;
