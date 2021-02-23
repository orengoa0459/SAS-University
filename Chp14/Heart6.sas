/* Program Heart found in /folders/myfolders/Project
This program displays a two-way table consisting of 
frequency data from variables Systolic and Diastolic from dataset Heart.    

Programmer: Anthony Orengo
Date Written: November 7, 2019*/

/*Creates a format for the selected variable Systolic in dataset Heart*/
proc format;
value SYSgrp
low-120 = 'Normal Systolic Pressure'
121-high ='High Systolic Pressure';
/*Creates a format for the selected variable Diastolic in dataset Heart*/
proc format;
value DIAgrp low-80 = 'Normal Diastolic Pressure'
81-high = 'High Diastolic Pressure';
run;

title "Two-Way Table for Heart by Systolic and Diastolic";
/*Computes the frequency for the dataset while producing a two-way table */
proc freq data = Perm.heart;

tables Systolic * Diastolic/chisq;
/*Sets the format using the created formats SYSgrp and DIAgrp*/ 
format Systolic SYSgrp. Diastolic DIAgrp.;
run;