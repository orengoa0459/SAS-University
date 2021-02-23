/* Program AvailModels found in /folders/myfolders/Chp_10*/
/*This program checkes for out of range dates using the reserved data set name NULL*/ 
/*Programmer: Anthony Orengo
Date Written: October 10 , 2019*/ 

data Study;
/*Used to produce streams of random numbers*/
 call streaminit(13579);
 do Subj=1 to 10;
Date = '01Jan1950'd + int(rand('uniform') * 15000);
AgeToday =yrdif(Date, today());
/*Rounds AgeToday to the nearest tenth*/
AgeRound = round(AgeToday,.1);
output;
end;
format Date date9.;

/*Displays results for data set Study*/
title "Listing for Study";

proc print data = Study;

run;

title "Checking for out of range dates";
/*NULL date set name is used to process observations from data set Study,
without creating a new data set*/
data _null_;
/*References data from data set Study*/
set work.study;
/*Displays the results of out of range dates*/
file print; 
/*Condition set to determine dates that are out of range*/
if Date <= '01Jan2015'd and not missing (Date) or
Date >= '04Jul2015'd then put "Date" Date "is out of a range"; 
run;




