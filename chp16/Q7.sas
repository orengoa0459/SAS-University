/* Program cars found in /folders/myfolders/Chp16
This program computes the mean and standard deviation for Horsepower by Make and
Origin for the dataset cars. 

Programmer: Anthony Orengo
Date Written: November 4, 2019*/

/*Sorts data by the specific listed variables (Make Origin)*/
proc sort data = perm.cars;
by Make Origin;
run;

/*Computes mean procedure for selected variables using the printalltypes option to 
see all possible combinations of the class variables*/
proc means data = perm.cars printalltypes
/*Produces the number of non missing values*/
n  
/*Produces the number of missing values*/
nmiss 
/*Produces the mean average for the listed variables*/
mean
/* Measures how varied the data is in the dataset*/
std

/*Controls the number of decimal places*/
maxdec = 1;

by Make Origin;
var Horsepower;
run;

