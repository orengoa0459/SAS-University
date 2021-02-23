/* Program College found in /folders/myfolders/Chp19
This program sends the output of proc print and proc means 
to an HTML file.

Programmer: Anthony Orengo
Date Written: November 14 2019*/


/*Creates the storage path for ods html*/
ods html path = '/folders/myfolders/Chp19'file = 'college.html';

title "Sending Output to an HTML File"; 
/*Produces a print out of dataset college with a limit 
of 8 observations*/
proc print data = perm.college( obs = 8) noobs; 
run; 

proc means data = perm.college
/*Produces the number of non missing values*/ 
n 
/*Produces the mean average for the listed variables*/
mean 
/*Controls the number of decimal places*/
maxdec = 2; 
var GPA ClassRank; 
run; 
/*Closes the ods html output*/
ods html close;

/*Closes the listing destination*/
ods listing;
