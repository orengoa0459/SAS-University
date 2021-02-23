/* Program Test found in /folders/myfolders/Chp_8*/
/*This program displays the test scores for each subject.*/ 
/*Programmer: Anthony Orengo
Date Written: September 24, 2019;*/

data Test; 

input Score1-Score3; 
	Subj + 1;

/*Datalines representing test scores for each variable*/
datalines; 
90 88 92 
75 76 88 
88 82 91 
72 68 70 
;
run;

/*Displays printed results of data set Test*/
title "Listing for Test";
proc print data = Test;
run;
