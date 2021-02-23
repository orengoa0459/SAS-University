title1 " Selected Patients from Hosp Data set";

title2 " Admitted in September of 2004";
title3 " Older than 83 years of age";
title4 " -------------------------";

proc print data = perm.hosp 
	n ='Number of Patients = ' 
	label 
	double; 
where Year(AdmitDate) eq 2004; 
where Month(AdmitDate) eq 9; 
where yrdif(DOB, AdmitDate,'Actual') ge 83; 
id Subject; 
var DOB AdmitDate DischrDate; 
label AdmitDate = 'Admission Date' 
DischrDate = 'Discharge Date' 
DOB = 'Date of Birth'; 
run;