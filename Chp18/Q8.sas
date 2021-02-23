/* Program College found in /folders/myfolders/Chp18
This program demostrates the use of row percents for dataset colege.

Programmer: Anthony Orengo
Date Written: November 12 2019*/

/*Creates a format for the selected variables using a value in dataset college*/
proc format;
value $gender
'F'='Female'
'M'= 'Male';
value $answer
'Y' ='Yes'
'N'= 'No';
run;

title " Demonstrating Row Percents";
/*Creates a tabular report based on frequencies, percentages, 
and descriptive statistics.*/
proc tabulate data = perm.college format =6.;

class Gender Scholarship ;
/*Identifies which variables will be used for the percentages report*/
tables Gender all, (Scholarship all)*(rowpctn);
/*Changes the 'N' row to the title Percent*/
keylabel n = 'Percent'
/*Changes the title of rowpct to Percent*/
rowpctn = 'Percent'
/*Changes the title of the all row to Total*/
all = 'All';

/*Sets the format using the created format gender/answer*/ 
format Gender $gender. Scholarship $answer.;
run; 
