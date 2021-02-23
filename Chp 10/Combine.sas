/* Program Combine found in /folders/myfolders/Chp_10*/
/*This program combines two data set by like ID number. */ 
/*Programmer: Anthony Orengo
Date Written: October 11 , 2019*/

/*Sorts data by ID for dataset demographic*/
proc sort data = perm.demographic out = demographic; 
by ID; 
run; 

data survey2; 
set perm.survey2( rename =( ID = NumID));
/*Ensures the leading zeros are in the format for ID*/ 
ID = put( NumID, z3.); 
drop NumID; 
run; 
/*Sorts data by ID for dataset Survey2*/
proc sort data = survey2; 
by ID; 
run; 

data combine; 
/*Merges datasets demographic and survey2 by ID*/
merge demographic survey2; 
by ID; 
run; 
/*Displays results for dataset combine*/
title "Listing for Combine"; 
proc print data = combine; 
run; 
 
data demographic; 
set perm.demographic( rename =( ID = CharID)); 
ID = input( CharID, 3.); 
drop CharID; 
run;
/*Sorts data by ID for dataset demographic*/
proc sort data = demographic; 
by ID; 
run; 
/*Sorts data by ID for dataset Survey2*/
proc sort data = perm.survey2 out = survey2; 
by ID; 
run; 







