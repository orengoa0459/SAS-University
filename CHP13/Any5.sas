/* Program Any5 found in /folders/myfolders/Chp_13*/
/*This program uses the variable Any5 to mark "Yes" for any subjects 
who chose 5 as a response in the survey.  
/*Programmer: Anthony Orengo
Date Written: October 24 2019*/


data survey2; 
/*References data from data set Perm.Survey1.*/
set perm.survey2; 
/*Sets variable Any5 to No for subjects who did not choose number 5
as a response.*/
Any5 = 'No ';
/*Identifies the group of variables Q1 through Q5*/
array Ques{5} $ Q1-Q5;
do i = 1 to 5; 
/*Sets the condition to mark Yes under the variable Any5 for
subjects who marked 5 as a response to a question.*/
if Ques{i} = 5 then do;
Any5  = 'Yes'; 
end;
end;
/*Eliminates the variable "i" from the table*/
drop i; 
run;


/*Displays a table with results for dataset Survey1*/
title "Listing for Survey2"; 
proc print data = survey2; 
run;