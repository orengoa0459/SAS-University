/* Program Fake found in /folders/myfolders/Chp_11

This program generates random numbers for variables gender and age. 

Programmer: Anthony Orengo
Date Written: October 17 , 2019*/

data fake; 
/*Controls the observation amount limit to 100*/
do Subj = 1 to 100;
/*Generates random number for set condition of percentage 
less than 40% will equal female, else will equal male.*/
if rand('uniform') le .4 then Gender = 'Female'; 
else Gender = 'Male'; 

/*Generates random number between 10 and 50 for 
variable Age.*/
Age = 9 + ceil( rand('uniform')* 51); 
output; 
end; 
run; 

/*Displays the results in frequency format for dataset RandInt*/
title "Frequencies"; proc freq data = fake; 
tables Gender / nocum; 
run; 
/*Displays the results in table format for dataset RandInt*/
title "Listing for Fake"; 
proc print data = fake( obs = 10); 
run;


