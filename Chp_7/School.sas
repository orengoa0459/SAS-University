/* Program School found in /folders/myfolders/Chp_7*/
/*This program displays the overall course grade for age groups 13 and 14, by computing the 
quiz grade, Midterm grade and final grade.*/
/*Programmer: Anthony Orengo
Date Written: September 22, 2019;*/


data School;

input Age Quiz : $ 1. Midterm Final;
/* If statement representing argument for Age and Grade level placement*/ 
if Age = 12 then Grade = 6;
else if Age = 13 then Grade = 9;
/*If statement representing argument for letter grade and quizgrade score*/
if Quiz = 'A' then QuizGrade = 95;
else if Quiz = 'B' then QuizGrade = 85;
else if Quiz = 'C' then QuizGrade = 75;
else if Quiz = 'D' then QuizGrade = 70;
else if Quiz = 'F' then QuizGrade = 65;

/*Formula for computing overall course grade for the semester*/ 
CourseGrade = .20* QuizGrade + .30* MidTerm + .50* Final;
/*Datalines consiting of Age, Quiz grade, Midterm grade, and Final grade*/ 
 datalines; 
 12 A 92 95 
 12 B 88 88 
 13 C 78 75 
 13 A 92 93 
 12 F 55 62 
 13 B 88 8
;
/*Displays printed results of dataset "School"*/
title "Listing of School Grades";
proc print data = School;
run;