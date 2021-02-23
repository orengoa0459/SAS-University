data SalesOne;

infile '/folders/myfolders/Chp_7/Sales.csv' dlm= ',' firstobs=2;
	input EmpID : $5. Name : $14. Region: $6. Customer : $18. Item : $6. Quantity UnitCost TotalSales;

run;