/* Program Blood found in /folders/myfolders/Chp15
This program uses a compute block to list the subjects current age 
at the day of admission.
Programmer: Anthony Orengo
Date Written: November 01 2019*/
title "Demostrating a Compute Block"; 

/*References data from set Hosp and list the first 5 observations*/
proc report data = perm.hosp(obs=5);
/*Selects which variables/columns will be displayed*/ 
column Subject AdmitDate DOB Age;
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define AdmitDate/ display "Admission Date" width = 10;
define DOB/display;
define Subject/ display width = 7;

/*Compute block*/
/*Allows for new variables to be computed in proc report*/
define Age/computed "Age at Admission";
compute Age;

/*Computes and rounds the year difference from DOB and Admission date*/
Age = round(yrdif(DOB,AdmitDate,'Actual'));
/*Ends the compute block function*/
endcomp;

run;
quit;





