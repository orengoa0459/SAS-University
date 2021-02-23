/* Program Subset_AB found in /folders/myfolders/Chp_10*/
/*This program displays two different datasets that display specific data 
based on gender and bloodtype*/ 
/*Programmer: Anthony Orengo
Date Written: October 8, 2019;*/


data Subset_A;
/*References data from data set Perm.Blood.*/
set Perm.Blood;

/*Statement to identify all females with blood type AB and
compute the data from WBC and RBC, with fromula .001*WBC+RBC*/ 
where Gender = 'Female' and BloodType = 'AB'; 
Combined = .001 *WBC + RBC;
run;
/*Displays listing for dataset Subset_A*/
title "Listing for Subset_A";
proc print data = Subset_A;
run;

data Subset_B;
/*References data from data set Perm.Blood.*/
set Perm.Blood;
/*Statement to identify all females with blood type AB and
compute the data from WBC and RBC, with fromula .001*WBC+RBC.
Only data that is >=14 will be populated*/ 
combined = .001 *WBC + RBC;
if Gender = 'Female' and BloodType = 'AB' and Combined >= 14;
run; 
/*Displays listing for dataset Subset_B*/
title "Listing for Subset_B";
proc print data = Subset_B;
run;
