/* Program blood found in /folders/myfolders/Chp17
This program displays two tables using the frequency procedure for the selected variable 
chol for dataset Blood. One table will generated results with the nocum function and the 
other will use the missing function.   

Programmer: Anthony Orengo
Date Written: November 6, 2019*/


/*Creates a format for the selected variables in dataset Blood*/
proc format; 
value cholgrp low-200 = 'Normal' 
201-high = 'High' . = 'Missing'; 
run; 

title "Demonstrating the MISSING Option"; 
title2 "Without MISSING Option"; 
/*Computes the frequecy procedure and does not include the
cumulative statistic columns (Missing) for the dataset Blood*/
proc freq data = perm.blood; 
tables Chol / nocum; 
/*Sets the format using the created format cholgrp*/
format Chol cholgrp.; 
run; 

title "Demonstrating the MISSING Option"; 
title2 "With MISSING Option"; 
/*Computes the frequecy procedure and  includes the
cumulative statistic columns (Missing) for the dataset Blood*/
proc freq data = perm.blood; 
tables Chol / nocum missing;
/*Sets the format using the created format cholgrp*/ 
format Chol cholgrp.; 
run;

