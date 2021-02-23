/* Program Heart found in /folders/myfolders/Project
This program computes computes the mean and standard deviation of systolic 
blood pressure for males and classifies it by weight. 


Programmer: Anthony Orengo
Date Written: November 7, 2019*/


/*Creates a format for the selected variables in data set Heart*/
proc format; 
/*Classifies character strings to print variables*/
value weightgrp 
low-150 = 'Less than 150'
151-High= '151 and Higher';
run;

title "Statistics on the Heart Data Set"; 

/*Computes the mean procedure by Male using 
standard deviation and mean*/
proc means data = Perm.Heart(where = (Sex='Male'))
std 
mean;
/*Used to classify the variables used in the analysis*/
class Weight;
var Systolic;
/*Formats the variable Weight using the created format "weightgrp".*/
format Weight weightgrp.;


run;



