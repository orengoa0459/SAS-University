/* Program Evaluate found in /folders/myfolders/Chp_11

This program determines x number of missing values for questions 1-10, 
and computes the mean average. This program also identifies the highest, 
secondhighest, and lowest score

Programmer: Anthony Orengo
Date Written: October 16 , 2019*/

data Evaluate;
/*Reference data set Perm.Blood while selecting specific variables*/
set perm.Psych (keep = ID  Ques1-Ques10 Score1-Score5);
/*If their are more than seven missing values, the mean will be computed for 
questions 1-10*/
if n(of Ques1-Ques10) ge 7 then QuesAve = mean(of Ques1-Ques10);
/*Determines the highest score for questions 1-10*/
MaxScore = max(of Ques1-Ques10);
/*Determines the lowest score for questions 1-10*/
MinScore = min(of Ques1-Ques10);
/*Determines the second highest score for questions 1-10*/
SecondHighest=sum(largest(2,of Ques1-Ques10));

/*Displays a table with results for dataset Evaluate*/
title "Listing for Evaluate";
proc print data = Evaluate;
run;