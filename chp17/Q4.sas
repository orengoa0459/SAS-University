/* Program voter found in /folders/myfolders/Chp17
This program displays two tables using the frequency procedure for the 
selected variables Party and Ques1-Ques4 for dataset Voter.    

Programmer: Anthony Orengo
Date Written: November 6, 2019*/


title "Two-Way Table for Party by Ques1-Ques4";
/*Computes the frequency for the dataset while producing a two-way table */
proc freq data = Perm.voter;
tables Party * Ques1-Ques4;
run;