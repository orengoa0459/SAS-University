/* Program Sales found in /folders/myfolders/Chp_7*/
/*This program displays only selected employee ID numbers "9888 and 0177"*/ 
/*Programmer: Anthony Orengo
Date Written: September 22, 2019;*/


data Sales;
/*Infile statement to link data from the excel spreadsheet to data set "Sales"*/
infile '/folders/myfolders/Chp_7/Sales.csv' dlm= ','; 
	input EmpID $;
run;

/*Displays printed results for selected employee ID numbers*/
title "Listing for Selected Employees"; 
proc print data = Sales;
where EmpID = '9888' or EmpID = '0177'; 
run;

