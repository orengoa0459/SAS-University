/* Program Expenses found in /folders/myfolders/Chp_8*/
/*This program computes the yearly income and expenses for Orion. This
program also contains a loop that will stop when conditions are met.*/ 
/*Programmer: Anthony Orengo
Date Written: September 26, 2019;*/

data Expenses;

/*Declared variables*/
Year = + 1;
Income = 50000000;
Year_Expense = 38750000;

/*"do" Statement, to set conditions for loop to stop at 30 years*/
do Year = 1 to 999 until (Year ge 30);
	
	/*Formula to compute yearly income increase*/
	Income = Income * .01 + Income;
	/*Formula to compute yearly expenses increase*/
	Year_Expense = Year_Expense * .02 + Year_Expense;
	output;
	end;
run;


/*Displays results for data set Expenses*/
proc print data = Expenses;
/*Formats variables "Year_Expense" and "Income" to read in "$" format.*/
format Year_Expense dollar10. Income dollar10.;
run;