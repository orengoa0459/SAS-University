title "Patient Age Groups"; 

proc report data = perm.bloodpressure; 

column Gender Age AgeGroup; 

define Gender / width =" 6"; 
define Age / display width =" 5"; 
define AgeGroup / computed "Age Group"; 
compute AgeGroup / character length = 5; 

if Age gt 50 then AgeGroup = '> 50'; 
else if not missing( Age) then AgeGroup = '< = 50'; 

endcomp; 
run; 
quit;

