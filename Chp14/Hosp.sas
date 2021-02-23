/* Program Blood found in /folders/myfolders/Chp14
This program list the number of patients older than 83 who 
were admitted in September of 2004.
Date Written: October 28 2019*/


title1 " Selected Patients from Hosp Data set";
title2 " Admitted in September of 2004";
title3 " Older than 83 years of age";
title4 " -------------------------";

proc print data = perm.hosp 
/*Produces the number of non missing values*/
	n ='Number of Patients = ' 
	label 
	double;
/*Selects the patients who are more than 83 years of age and
who were admitted in September of 2004*/
where Year(AdmitDate) eq 2004; 
where Month(AdmitDate) eq 9; 
where yrdif(DOB, AdmitDate,'Actual') ge 83; 
id Subject; 
/*Selects which columns will be present in the table*/
var DOB AdmitDate DischrDate; 
/*Changes the label of the variable*/
label AdmitDate = 'Admission Date' 
DischrDate = 'Discharge Date' 
DOB = 'Date of Birth'; 
run;



