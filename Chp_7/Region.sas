/* Program Region found in /folders/myfolders/Chp_7*/
/*This program displays the data of selected columns "Region" and "TotalSales" and categorizes the region 
by specific weights */ 
/*Programmer: Anthony Orengo
Date Written: September 22, 2019;*/

data Region;

/*References data from data set WORK.saleone*/
/* Displays only columns Region and TotalSales*/
set WORK.salesone(keep = Region TotalSales);

/* The "select expression" compares the "when expression" to be true or false.*/
/*Variable "Weight" will categorize each region by weight.*/
select;

when (Region = 'North') Weight = 1.5;
when (Region = 'South') Weight = 1.7;
when (Region = 'West') Weight = 2.0;
when (Region = 'East') Weight = 2.0;

/*Terminates select statement after each comparison is evaluated*/
otherwise;
end;

/*Displays printed results of data set Region*/
title "Listing for Region";
proc print data = Region;
run;