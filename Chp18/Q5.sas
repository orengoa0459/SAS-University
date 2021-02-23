/* Program College found in /folders/myfolders/Chp18
This program displays the descriptive statistics from the College
dataset in twp-way table format.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

title "Descriptive Statistics"; 
/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.college 
/*Rounds the statiscal data with a max of 1 decimal place*/ 
format = 6.1; 
class Gender;
var GPA; 
/*Identifies which variables will be used in the descriptive 
statistic table report*/
tables GPA*( n* f = 4. mean min max), Gender all; 

/*Changes the 'N' row to the title Number*/
keylabel n = 'Number'
/*Changes the title of the all row to Total*/ 
all = 'Total' 
/*Changes the title of Mean min max to  Average, Minimum and Maximum*/ 
mean = 'Average' 
min = 'Minimum' 
max = 'Maximum'; 
run;

