/* Program Questionnaire2 found in /folders/myfolders/Chp_Proj
This program identifies the largest scores and 
computes the mean average for variables Q1-Q20.  
Programmer: Anthony Orengo
Date Written: October 25 2019*/

data Questionnaire2;
input Subj $ Q1-Q20;

/*If their are more than seven missing values, the mean will be computed for 
questions 1-10*/
if n(of Q1-Q10) ge 7 then Score1 = mean( of Q1-Q10); 
/*If their are less than 5 missing values, the mean will be computed for 
questions 11-20*/
if n(of Q11-Q20) Le 5 then Score2 = mean( of Q11-Q20);
/*Identifies the largest score for variables Q1-Q10*/
score3 = largest(1, of Q1-Q10);
/*Identifies the 1st and 2nd largest scores and 
adds them together.*/
score4 = sum(largest(1, of Q1-Q10),	 
			largest(2, of Q1-Q10)); 
/*Identifies the 1st, 2nd, and 3rd largest scores and 
computes the mean average.*/
Mean_3_Large = mean(largest(1, of Q1-Q10),
	largest(2, of Q1-Q10),
	largest(3, of Q1-Q10));
/*If their are more than 3 missing values, the mean will be computed for 
questions 1-10*/	
if n(of Q1-Q10) ge 3 then
/*Identifies the 1st,2nd, and 3rd largest scores and 
computes the mean average*/
Mean_3_Large = mean(largest(1, of Q1-Q10),
	largest(2, of Q1-Q10),
	largest(3, of Q1-Q10));
if n(of Q1-Q10) ge 3 then
/*Identifies the 1st,2nd, and 3rd smallest scores and 
computes the mean average*/
Mean_3_Low = mean(smallest(1, of Q1-Q10),
	smallest(2, of Q1-Q10),
	smallest(3, of Q1-Q10));

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