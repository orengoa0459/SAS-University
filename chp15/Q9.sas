/* Program survey3 found in /folders/myfolders/Chp15
This program displays the report on the Survey Data Set.
Programmer: Anthony Orengo
Date Written: November 01 2019*/

title "Report on the Survey Data Set"; 

proc report data = perm.survey3 split =' '; 
/*Selects which variables/columns will be displayed*/
column ID Age Gender Salary Ques1-ques5 AveResponse; 
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define ID / display width =4; 
define Age / display width =18; 
define Gender / display width = 6; 
define Salary / display width =10 format = dollar10.; 
define Ques1 / display noprint;
define Ques2 / display noprint; 
define Ques3 / display noprint; 
define Ques4 / display noprint; 
define Ques5 / display noprint;


/*Compute block*/
/*Allows for new variables to be computed in proc report*/
compute AveResponse; 
Q1 = input( Ques1,1.); 
Q2 = input( Ques2,1.); 
Q3 = input( Ques3,1.); 
Q4 = input( Ques4,1.); 
Q5 = input( Ques5,1.); 
AveResponse = mean( of Q1-Q5); 
/*Ends the compute block function*/
endcomp;
/*Specifies the usage for each varible while changing the display title, format, and 
width size*/
define AveResponse / computed "Average Response" width = 8 format = 3.1; 
run; 
quit;




