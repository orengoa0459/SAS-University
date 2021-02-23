/* Program Bicycles found in /folders/myfolders/Chp_10*/
/*This program ueses two separate datasets that display
specific model bikes based on country*/ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/

data Mountain_USA Road_France;
/*References data from data set Perm.Bicycles.*/
set Perm.Bicycles;

/*Statement to set a specific condition for country and bike model*/
if Country = 'USA' and Model = 'Mountain Bike' then output Mountain_USA;

else if Country = 'France' and Model = 'Road Bike' then output Road_France;
run; 

/*Displays dataset Mountain_USA*/
title "Listing for USA";
proc print data = Mountain_USA;
run;
/*Displays dataset Road_France*/
title "Listing for France";
proc print data = Road_France;
run;