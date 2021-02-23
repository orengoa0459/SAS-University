/* Program College found in /folders/myfolders/Chp18
This program demostrates the use of column percents for dataset college.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

title "Demonstrating Column Percents";
/*Creates a format for the selected variables using a value in dataset college*/
proc format; 
value $ gender 'F' = 'Female' 
'M' = 'Male'; 
value $answer
'Y'= 'Yes'
'N'= 'No';
run; 
/*Sorts referenced data by variable Scholarship in descending order*/
proc sort data = perm.college out = college; 
by descending Scholarship; 
run; 

/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = college 
/*Rounds the statiscal data*/ 
format = 7. 
/*Eliminates horizontal separator lines from row titles*/
order = data noseps; 

class Gender Scholarship;

/*Identifies which variables will be used in the column percentages
 table report*/
tables (Gender all), (Scholarship all)* colpctn; 

/*Changes the label of 'colpctn' to Percent*/
keylabel colpctn = 'Percent' 
/*Changes the title of the all row to Total*/
all = 'Total'; 
/*Sets the format using the created format gender*/ 
format Gender $gender. Scholarship $answer.; 

run;



