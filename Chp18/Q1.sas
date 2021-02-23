/* Program College found in /folders/myfolders/Chp18
This program displays the demographics from the College
dataset in one-way table format.

Programmer: Anthony Orengo
Date Written: November 12 2019*/


/*Creates a format for the selected variables using a value in dataset college*/
proc format; 
value $ Yesno 'Y',' 1' = 'Yes' 
'N',' 0' = 'No' ' ' = 'Not Given'; 

value $ Size 
'S' = 'Small' 
'M' = 'Medium' 
'L' = 'Large'
' ' = 'Missing'; 

value $ Gender 'F' = 'Female' 
'M' = 'Male' 
' ' = 'Not Given'; 
run;


options fmtsearch =(perm); 

title "Demographics from COLLEGE Data Set"; 
/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.college 

format = 6.; 
class Gender Scholarship SchoolSize;
/*Identifies which variables will be used in the table*/
tables Gender Scholarship all, SchoolSize / rts = 15; 
keylabel n =' ';
/*Sets the format using the created format Size*/  
format SchoolSize $Size.;
run;

