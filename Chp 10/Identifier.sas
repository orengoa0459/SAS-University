/* Program Identifier found in /folders/myfolders/Chp_10*/
/*This program merges two datasets by same identifier and displays results
of survey*/ 
/*Programmer: Anthony Orengo
Date Written: October 10 , 2019*/ 

/*Sorts data by ID for dataset demographic*/
proc sort data = perm.demographic out = perm.demographic;
by ID; 
run; 
/*Sorts data by Subj for dataset Survey1*/
proc sort data = perm.survey1 out = perm.survey1; 
by Subj; 
run; 

data Identifier;
/*Merges datasets demographic and survey1 by ID and renames Subj to ID*/
merge perm.demographic perm.survey1 (rename = (Subj = ID));
by ID;
	
run;
/*Displays results for dataset Identifier*/
title "Listing for Identifier";
proc print data = Identifier;
run;