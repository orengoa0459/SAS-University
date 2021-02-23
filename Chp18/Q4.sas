/* Program College found in /folders/myfolders/Chp18
This program displays the demographics from the College
dataset in twp-way table format.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

/*Creates a format for the selected variables using a value in dataset college*/
proc format;
value $answer 
'Y' = 'Yes'
'N' = 'No';
value 
$gender 'F' = 'Female' 'M' = 'Male'; 

value rank
Low - 70 = 'Low to 70'
71 - high = '71 to Higher';
run;

title "Demographics from COLLEGE Data Set"; 
/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.college 
format = 6.; 
class  Scholarship ClassRank Gender;
/*Identifies which variables will be used in the table report*/
tables Scholarship all, 
(ClassRank)* (Gender all);
/*Changes the title of the keylabel to 'Total'*/ 
keylabel all ='Total';
/*Eliminates the row 'N' from the table*/
keylabel n =' ';

/*Sets the format using the created format answer/gender*/ 
format Scholarship $answer. ClassRank rank. Gender $gender.;
run;
