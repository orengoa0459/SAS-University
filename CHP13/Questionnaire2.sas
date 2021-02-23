/* Program Questionnaire2 found in /folders/myfolders/Chp_Proj
This program identifies the 12 largest scores and 
computes the mean average for variables Q1-Q20.  
Programmer: Anthony Orengo
Date Written: October 25 2019*/

data Questionnaire2;

input Subj $ Q1-Q20;

call sortn(of Q1-Q20);
/*Identifies the 12 largest scores and 
computes the mean average.*/
large_12 = mean(largest(1, of Q1-Q20),largest(2, of Q1-Q20),
	largest(3, of Q1-Q20),largest(4, of Q1-Q20),
	largest(5, of Q1-Q20),largest(6, of Q1-Q20),
	largest(7, of Q1-Q20),largest(8, of Q1-Q20),
	largest(9, of Q1-Q20),largest(10, of Q1-Q20),
	largest(11, of Q1-Q20),largest(12, of Q1-Q20));

datalines;
001 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
002 . . . . 3 2 3 1 2 3 4 3 2 3 4 3 5 4 4 4
003 1 2 1 2 1 2 12 3 2 3 . . . . . . 4 5 5 4
004 1 4 3 4 5 . 4 5 4 3 . . 1 1 1 1 1 1 1 1
;
run;
/*Displays a table with results for dataset Questionnaire2*/
title "Listing for Questionnaire2";
proc print data = Questionnaire2;
run;