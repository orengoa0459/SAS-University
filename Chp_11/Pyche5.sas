/* Program Evaluate found in /folders/myfolders/Chp_11

This program determines x number of missing values for questions 1-10, 
and computes the mean average. This program also identifies the highest, 
secondhighest, and lowest score

Programmer: Anthony Orengo
Date Written: October 16 , 2019*/



data Evaluate; 
/*Reference data set Perm.Blood*/
set Perm.Psych; 

/*If their are more than 3 missing values for Score1-Score5, 
the mean will be computed for the 1st, 2nd and third largest 
score of Score1-Score5.*/ 
if n(of Score1-Score5) ge 3 then 
ScoreAve = mean( largest( 1, of Score1-Score5), 
/*Determines the second highest score*/
largest( 2, of Score1-Score5),
/*Determines the third highest score.*/ 
largest( 3, of Score1-Score5)); 

/*If their are more than seven missing values, the mean will be computed for 
questions 1-10*/
if n( of Ques1-Ques10) ge 7 then QuesAve = mean( of Ques1-Ques10); 
/*Formula to compute the total composite*/
Composit = ScoreAve + 10* QuesAve; 

keep ID ScoreAve QuesAve Composit; 
run;

/*Displays a table with results for dataset Evaluate*/
title "Listing for Evaluate";
proc print data = Evaluate;
run;
