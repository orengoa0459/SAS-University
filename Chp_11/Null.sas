/* Program Evaluate found in /folders/myfolders/Chp_11

This program determines x number of missing values for questions 1-10, 
and computes the mean average. This program also identifies the highest, 
secondhighest, and lowest score

Programmer: Anthony Orengo
Date Written: October 16 , 2019*/


data _null_; 
x = 10;
y = 20; 
z = -30; 
AbsZ = abs(z); 
ExpX = round(exp(x),.001); 
Circumference = round(2* constant('pi')* y,.001);
put _all_; 
run;


