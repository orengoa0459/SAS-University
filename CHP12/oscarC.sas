/* Program Questionnaire2 found in /folders/myfolders/Chp_Proj
This program returns the charater and storage lengths of variable 
String and properly cases variables Name and String.  
Programmer: Anthony Orengo
Date Written: October 25 2019*/

data Oscar;
length String $ 10 Name $ 20 Comment $ 25 Address $ 30 Q1-Q5 $ 1;
infile datalines dsd dlm=" ";  
*Note: the DSD option is needed to strip the quotes from
 the variables that contain blanks;
 input String Name Comment Address Q1-Q5;
 /*Returns character length not including 
 trailing blanks of variable string*/
 L1 = lengthn(String);
 /*Returns storage length of variable string*/
 L2 = lengthc(String);
 
 /*Returns all letters to uppercase*/
 String = upcase(String);
 /*Properly cases each observation in variable Name*/
 Name = Propcase(Name, " '");
/*Condition set to ectract the 2nd and 3rd character of variable String*/
Two_Three = input(substr(String,2,3),2.);

datalines;
AbC "jane E. MarPle" "Good Bad Bad Good" "25 River Road" y n N Y Y
12345 "Ron Cody" "Good Bad Ugly" "123 First Street" N n n n N
98x "Linda Y. d'amore" "No Comment" "1600 Penn Avenue" Y Y y y y
. "First Middle Last" . "21B Baker St." . . . Y N
;
/*Displays a table with results for dataset Oscar*/
title "Listing for Oscar";
proc print data = Oscar;
run;

