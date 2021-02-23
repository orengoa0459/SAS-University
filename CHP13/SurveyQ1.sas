/* Program Survey1 found in /folders/myfolders/Chp_13*/
/*This program reversus the values of variables Ques1-Ques5*/ 
/*Programmer: Anthony Orengo
Date Written: October 24 2019*/


data survey1; 
/*References data from data set Perm.Survey1.*/
set perm.survey1; 
/*Identifies the group of variables Q1 through Q5*/
array Ques{5} $ Q1-Q5; 
do i = 1 to 5; 
Ques{i} = translate(Ques{i},'54321','12345'); 
end; 
/*Eliminates the variable "i" from the table*/
drop i; 
run;


/*Displays a table with results for dataset Survey1*/
title "Listing for Survey1"; 
proc print data = survey1; 
run;

