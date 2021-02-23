/* Program College found in /folders/myfolders/Chp18
This program displays the descriptive statistics from the College
dataset in two-way table format.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

title "More Descriptive Statistics"; 

/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.college 
/*Rounds the statiscal data with a max of 1 decimal place*/ 
	
format = 7.1 
/*Eliminates horizontal separator lines from row titles*/
noseps; 

class Gender SchoolSize; 
var GPA ClassRank; 

/*Identifies which variables will be used in the descriptive 
statistic table report*/
tables SchoolSize all, 
GPA*( median min max)
ClassRank*( median* f = 7. min* f = 7. max* f = 7.)/ rts = 15; 

/*Changes the title of the all row to Total*/
keylabel all = 'Total'
/*Changes the title of median mean min max to  Median,Average, Minimum and Maximum*/  
median = 'Median' 
min = 'Minimum' 
max = 'Maximum'; 

/*Changes the title of the ClassRank and SchoolSize variables*/
label ClassRank = 'Class Rank' 
SchoolSize = 'School Size'; 
run;

