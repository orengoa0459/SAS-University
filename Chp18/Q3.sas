/* Program College found in /folders/myfolders/Chp18
This program displays the demographics from the College
dataset in twp-way table format.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

/*Creates a format for the selected variables using a value in dataset college*/
proc format; value 
$gender 'F' = 'Female' 'M' = 'Male'; 
run; 

title "Demographics from COLLEGE Data Set"; 
/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.college format = 6.; 
class Gender Scholarship SchoolSize; 

/*Identifies which variables will be used in the table report*/
tables (Gender all)*( Scholarship all), 
SchoolSize all / rts = 25;
/*Changes the title of the keylabel to 'Total'*/
keylabel n =' ' all = 'Total'; 
/*Sets the format using the created format Size*/ 
format Gender $gender.; 
run;

