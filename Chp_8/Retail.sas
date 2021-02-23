/* Program Retail found in /folders/myfolders/Chp_8*/
/*This program determines the bonus and level status of quarterly Sales*/
/*Programmer: Anthony Orengo
Date Written: September 26 2019;*/

data Sales_Status;
	/*Inputs the variables for the listed datalines.*/
	input Sales Date: YYQ4. Year Month Day;
	
	/*Creates a label for variable Sales*/
	label Sales= "Retail sales in millions of $";
	
	/*"If" statement,  to set argument conditions for variable Sales.*/
	if Sales ge 300 then do;
	Bonus = 'Yes'; 
	Level = 'High';
	end;
	else if not missing(Sales) then do
	Bonus = 'No';
	Level = 'Low';
	end;
datalines;
220 80Q1 1980 1 1
257 80Q2 1980 4 1
258 80Q3 1980 7 1
295 80Q4 1980 10 1
247 81Q1 1981 1 1
;
run;
/*Displays results for data set Retail*/

title "Listing for Sales_Status";
proc print data = Sales_Status;
/*Formats variables "Sales" to read "$" and "Date" to read in Quarterly format.*/
format Sales Dollar10. Date YYQ4.;
run;