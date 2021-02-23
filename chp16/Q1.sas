/* Program College found in /folders/myfolders/Chp16
This program computes the mean, median, minimum, and maximum and the number 
of both missing and nonmissing values for the variables ClassRank and GPA.

Programmer: Anthony Orengo
Date Written: November 4, 2019*/

/*Creates a format for the selected variables in data set college*/ 
proc format; 
value $ Yesno 'Y',' 1' = 'Yes' 
'N',' 0' = 'No' 
' ' = 'Not Given'; 

value $ Size 'S' = 'Small' 
'M' = 'Medium' 
'L' = 'Large' 
' ' = 'Missing'; 

value $ Gender 'F' = 'Female' 
'M' = 'Male' 
' ' = 'Not Given';
run;
/*Allows data sets with user defined formats to produce without
causing error*/
options nofmterr;

/*Sorts data by the variables Gender and SchoolSize in data set
college*/
proc sort data = perm.college;

by Gender SchoolSize;
run;
/*Initiates the mean procedure for the selected variables in 
data set college using the by statement*/
proc means data = perm.college
/*Produces the number of non missing values*/
n 
/*Produces the number of missing values*/
nmiss
/*Produces the mean average for the listed variables*/
mean 
/*Produces the median average for the listed variables*/
median 
/*Produces the minimum non missing values for the listed variables*/
min
/*Produces the maximum value for the listed variables*/ 
max 
/*Controls the number of decimal places*/
maxdec = 2; 
by Gender SchoolSize;
var ClassRank GPA;
run;
/*Initiates the mean procedure for the selected variables in 
data set college using the class statement*/
proc means data = perm.college
n
nmiss
mean
median
min
max
maxdec = 2;
class Gender SchoolSize;
var ClassRank GPA;
run;




