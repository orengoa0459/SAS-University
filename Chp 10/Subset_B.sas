data Subset_B;

set Perm.Blood;

combined = .001 *WBC + RBC;
if Gender = 'Female' and BloodType = 'AB' and combined >= 14;
run; 
proc print data = Subset_B;
run;