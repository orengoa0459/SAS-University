/* Program College found in /folders/myfolders/Chp16
This program groups the small and medium sized schools together.

Programmer: Anthony Orengo
Date Written: November 4, 2019*/

/*Creates a format for the selected variables in data set college*/ 
proc format; 
/*Classifies character strings to print variables*/
value $groupsize
'S' = 'Small'
'M' = 'Medium'
'L' = 'Large';
run;
/*Displays the titles for data set college*/
title "Statistics on the College Data Set - Using Class"; 
title2 "Broken down by School Size"; 
proc means data = perm.college;
/*Used to classify the variables used in the analysis*/
class SchoolSize;
var ClassRank GPA;
/*Formats the variable SchoolSize using the created format "$"groupsize".*/
Format SchoolSize $groupsize.;
run;


