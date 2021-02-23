
proc format;
value $Size 
'L' = 'Large'
'M' = 'Medium'
'S' = 'Small';


options fmtsearch =(perm); 

title "Demographics from COLLEGE Data Set"; 

proc tabulate data = perm.college 

format = 6.; 
class  SchoolSize Gender Scholarship ;


tables SchoolSize all, Gender Scholarship all; 
keylabel all ='Total';
keylabel n =' ';
format SchoolSize $Size.;
run;

