/* Program passing found in /folders/myfolders/Chp_13*/
/*This program consist of five scores and determines the number of test 
passed by the score number.  
/*Programmer: Anthony Orengo
Date Written: October 24 2019*/


data passing; 
/*Identifies the group of observations listed under variables
score1-score5 and creates an exception for failed grade*/
array pass_score{5} _temporary_ (65,70,60,62,68);
/*Identifies and groups the variables score1-score5*/ 
array Score{5}; 
/*Inputs the variables for datalines listed below*/
input ID: $ 3. Score1-Score5; 
NumberPassed = 0; 
do Test = 1 to 5; 
/*Formula that determines if the score is greater than or equal to 
the set conditions of the variable pass_score, that the score will be marked as 
a passing score*/
NumberPassed + (Score{Test} ge pass_score{Test}); 
end; 
/*Eliminates the variable "Test" from the table*/
drop Test; 
datalines; 
001 90 88 92 95 90 
002 64 64 77 72 71 
003 68 69 80 75 70 
004 88 77 66 77 67 
; 

/*Displays a table with results for dataset Passing*/
title "Listing for Passing"; 
proc print data = passing; 
id ID; 
run;



