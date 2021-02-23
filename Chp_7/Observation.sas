/* Program Observations found in /folders/myfolders/Chp_7*/
/*This program displays the processed subset data of variables Region, Quantity, and Customer*/ 
/*Programmer: Anthony Orengo
Date Written: September 22, 2019;*/


data Observation;

/*References data from data set WORK.saleone*/
set WORK.salesone;
/*Where statement to subset the data for variables Region, Quantity, and Customer*/
where Region = 'North' and Quantity < 60 or customer = 'Pets are Us';  	
run;

/*Displays printed results of data set Observation*/
title " Listing for Observation";
proc print data = Observation;
  
run;





