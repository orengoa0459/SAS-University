/* Program BloodMiss found in /folders/myfolders/Chp_11*/
/*This program computes the number of missing input for variables 
WBC,RBC, and Chol.*/ 
/*Programmer: Anthony Orengo
Date Written: October 16 , 2019*/ 



data BloodMiss; 
/*Reference data set Perm.Blood*/
set perm.Blood; 
/*Computes the number of missing input for variables WBC,RBC, and Chol*/
if missing(WBC) then MissWBC + 1; 
if missing(RBC) then MissRBC + 1; 
if missing(Chol) then MissChol + 1;
run;
/*Displays a table with results for dataset BloodMiss*/
title "Listing for BloodMiss";
proc print data = BloodMiss;
run;

