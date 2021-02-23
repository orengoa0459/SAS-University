data Storage; 


length A $ 4 B $ 4;

 Name = 'Goldstein'; 
 AandB = A || B; 
 Cat = cats(A, B); 
 if Name = 'Smith' then Match = 'No'; 
 else Match = 'Yes'; 
 Substring = substr(Name, 5,2); 
 
 run;

proc print data = Storage;
run;

