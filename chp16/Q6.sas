/* Program college found in /folders/myfolders/Chp16
This program displays four summary data sets containing the number of 
nonmissing and missing values and the mean, minimum, and maximum for 
ClassRank and GPA, broken down by Gender and SchoolSize. 

Programmer: Anthony Orengo
Date Written: November 6, 2019*/

/*Suppresses displayed output while limiting output statistics*/
proc means data = perm.college noprint chartype; 
/*Used to classify the variables used in the analysis*/
class Gender SchoolSize; 
var ClassRank GPA;

/*Creates a data set comprised of statical data for class_summary*/ 
output out = summary 
/*Autonames newly created statistics*/
n = mean = median = min = max = / autoname; 
run; 

data grand( drop = Gender SchoolSize) 
bygender( drop = SchoolSize) 
bysize( drop = Gender)
cell; 
drop _freq_; 
set summary; 

if _type_ = '00' 
then output grand; 
else if _type_ = '10' 
then output bygender; 
else if _type_ = '01' then output bysize; 
else if _type_ = '11' then output cell; 
run; 

/*Displays data in table format for the group of data sets*/
title "Listing of GRAND"; 
proc print data = grand noobs; 
run; title "Listing of BYGENDER";
proc print data = bygender noobs; 
run; title "Listing of BYSIZE"; 
proc print data = bysize noobs; 
run; title "Listing of CELL"; 
proc print data = cell noobs; run;


