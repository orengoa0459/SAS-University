/* Program Blood found in /folders/myfolders/Chp_7*/
/*This program displays Blood and cholesterol data for various ages */ 
/*Programmer: Anthony Orengo
Date Written: September 23, 2019;*/
data Blood;
/*References data from data set Permanent Perm.Blood*/
set Perm.Blood;

/*Specifies character length for variable CholGroup*/
length CholGroup $ 6; 

/*Identifies and groups different cholesterol numbers by low, Medium, or High.*/
/*Missing data will be represented by '.'*/
select; 
when (missing( Chol)) CholGroup = ' '; 
when (Chol <= 110) CholGroup = 'Low'; 
when (Chol <= 140) CholGroup = 'Medium'; 
otherwise CholGroup = 'High';
end; 

run; 

/*Displays printed results of data set*/
title "Listed Data for Blood";
proc print data = Blood; 
run;

