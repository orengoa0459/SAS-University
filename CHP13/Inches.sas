/* Program Inches found in /folders/myfolders/Chp_Proj
This program uses an array to convert centimeters to inches
for variables Length1 Length2 Length3 Height Width.   
Programmer: Anthony Orengo
Date Written: October 26 2019*/

data Inches;
input Species $ 1-9 Weight 10-12 Length1 13-16 Length2 17-20 Length3 21-24 Height 25-31 Width 32-37;
/*Groups the variables together to compute the formula in 
one data step.*/
array CM {5} Length1 Length2 Length3 Height Width;
do i = 1 to 5;
/*Formula used to convert CM to In*/
CM [i] = CM [i]/2.54;
end;
/*Eliminates the variable "i" fromt he data table*/
drop i;
datalines;
Bream    24223.225.430.011.52004.0200
Bream    29024.026.331.212.48004.3056
Bream    34023.926.531.112.37784.6961
Bream    36326.329.033.512.73004.4555
Bream    43026.529.034.012.44405.1340
;

/*Displays a table with results for dataset Inches*/
title "Listing for Inches";
proc print data = Inches;
run;