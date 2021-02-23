/* Program College found in /folders/myfolders/Chp16
This program summarizes the statistical data for data set college.

Programmer: Anthony Orengo
Date Written: November 4, 2019*/

/*Suppresses displayed output while limiting output statistics*/
proc means data = perm.college noprint nway;
/*Used to classify the variables used in the analysis*/
class SchoolSize;

var ClassRank GPA;
/*Creates a data set comprised of statical data for class_summary*/
output out = class_summary
/*Autonames newly created statistics*/
n=mean= median= / autoname;
run;
/*Displays the summarized data for college in table format*/
title"Summary for Data Set class_summary";
proc print data = class_summary;
run;
