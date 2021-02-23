/* Program College found in /folders/myfolders/Chp16
This program reports the mean GPA for folloeing categories of ClassRank
(bottom half, 3rd quartile, and top quarter).

Programmer: Anthony Orengo
Date Written: November 4, 2019*/

/*Creates a format for the selected variables in data set college*/
proc format; 
/*Classifies character strings to print variables*/
value rank 0-50 = 'Bottom Half' 
51-74 = 'Third Quartile' 75-100 = 
'Top Quarter'; 
run; 
/*Displays the titles for data set college*/
title "Statistics on the College Data Set"; 
title2 "Broken down by School Size"; 
proc means data = Perm.college 
/*Produces the number of non missing values*/
n 
/*Produces the mean average for the listed variables*/
mean 
/*Controls the number of decimal places*/
maxdec = 2; 
/*Used to classify the variables used in the analysis*/
class ClassRank; 
var GPA; 
/*Formats the variable ClassRank using the created format "Rank".*/
format ClassRank rank.; 

run;


