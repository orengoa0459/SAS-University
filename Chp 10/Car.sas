/* Program Car found in /folders/myfolders/Chp_10*/
/*This program contains two dataset that determine cars that are 
cheap and expensive. */ 
/*Programmer: Anthony Orengo
Date Written: October 12 , 2019*/ 


data CarsCheap;
/*References data from data set SASHELP.CARS.*/
set SASHELP.CARS (Keep = Make Type Origin MSRP);
/*Operator to identify all cars equal to or under $11,000 MSRP*/
where MSRP <= 11000 and not missing (MSRP);
run;
/*Displays results for dataset CheapCars*/
title "Listing for Cheap Cars";
proc print data = CarsCheap;
run;

data CarsExps;
/*References data from data set SASHELP.CARS.*/
set SASHELP.CARS (Keep = Make Type Origin MSRP);
/*Operator to identify all cars equal to or over $100,000 MSRP*/
where MSRP >= 100000 and not missing (MSRP);
/*Displays results for dataset ExpsCars*/
title "Listing for Expensive Cars";
proc print data = CarsExps;
run;

