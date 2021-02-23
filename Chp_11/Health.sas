/* Program Health found in /folders/myfolders/Chp_11*/
/*This program computes different methods, of rounding the variable BMI,
using Data set Perm.Health*/ 
/*Programmer: Anthony Orengo
Date Written: October 16 , 2019*/ 



data Health; 
/*Reference data set Perm.Health*/
set Perm.Health; 

BMI = (Weight/ 2.2) / (Height*.0254)** 2;
/*Rounds variable BMI to the nearest integer*/ 
BMIRound = round( BMI); 
/*Rounds variable BMI to the nearest tenth*/ 
BMIRound_tenth = round( BMI,.1);
/*Rounds variable BMI to the nearest multiple of 5*/  
BMIGroup = round( BMI, 5); 

/*Reduces length of decimal number*/
BMITrunc = int( BMI); 
run; 
/*Displays a table with results for dataset Health*/
title "Listing for Health"; 
proc print data = Health; 
run;

