/* Program Expenses found in /folders/myfolders/Chp_8*/
/*This program calculates the amount of missing data from variables A,B,C,D,and E*/ 
/*Programmer: Anthony Orengo
Date Written: September 26, 2019;*/

data Missing;

Input A B $ C D $ E;
/*If statement setting conditions for missing data*/
/*Includes counter (Misx + 1) to track amount of data 
missing from each variable*/ 
if missing (A) then MisA + 1;
if missing (B) then MisB + 1;
if missing (C) then MisC + 1;
if missing (D) then MisD + 1;
if missing (E) then MisE + 1;


datalines;
21 M 80 B- 82
.  F 90 A  93 
35 M 87 B+ 85
48 F  . .  76
59 F 95 A+ 97
15 M 88 .  93
67 F 97 A  91
.  M 62 F  67
35 F 77 C- 77
49 M 59 C  81
;
run;

/*Displays results for data set Expenses*/
title"Listing for Missing";
proc print data= Missing;
run;