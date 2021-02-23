/* Program Blood found in /folders/myfolders/Chp17
This program computes the frequency by BloodTpye in frequency
order. Does not include cumulative statistics
and percentages   

Programmer: Anthony Orengo
Date Written: November 6, 2019*/


title "Blood Types in Decreasing Frequency Order"; 

/*Computes the frequecy procedure in order by 
frequency for the dataset Blood*/
proc freq data = perm.blood 
order = freq; 

/*Displays the table BloodType without cumulative statistics
and percentages*/
tables BloodType / nocum nopercent;

run;

