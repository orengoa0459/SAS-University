/* Program Personal found in /folders/myfolders/Chp_12*/
/*This program removes numbers from variables SS and AcctNum */ 
/*Programmer: Anthony Orengo
Date Written: October 24 , 2019*/

data personal; 
/*References data from data set Perm.Personal.*/
set Perm.personal( drop = Food1-Food8);
/*Eliminates the leading numbers of the SSN# leaving the last four
digits.*/
substr( SS, 1,7) = '******'; 
/*Includes only the first four numbers of the variable AcctNum*/
substr( AcctNum, 5,1) = '-'; 
run;


title "Listing for Personal";
proc print data = personal;
run;


