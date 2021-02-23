/* Program Survey found in /folders/myfolders/Chp18
This program sends the output of proc print and proc means 
to an RTF file.

Programmer: Anthony Orengo
Date Written: November 14 2019*/

/*Creates the storage destination for the RTF file*/
ods rtf path = '/folders/myfolders/Chp19'file = 'Survey.rtf';
title "Sending Output to an RTF File";
proc print data = perm.survey( obs = 8) noobs; 
run; 

proc means data = perm.survey;
run;
/*Closes the ods rtf output*/
ods rtf close;
