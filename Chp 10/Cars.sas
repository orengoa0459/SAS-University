data Cars;
input Make $ 1-5 
Model $ 6-19
Type $ 20-25
Origin $ 26-29
DriveTrain $ 30-35
MSRP $ 36-42 
Invoice $ 43-49
EngineSize
Cylinders
HorsePower
MPG_City
MPG_Highway
Weight
Wheelbase
Length;
datalines;
Acura MDX          SUV   Asia All   36,945 33,337 3.5 6 265 17 23 4451 106 189
Acura RSX TypeS 2drSedan Asia Front 23,820 21,761 2.0 4 200 24 31 2778 101 172
Acura TSX 4dr      Sedan Asia Front 26,990 24,647 2.4 4 200 22 29 3230 105 183
Acura TL 4dr       Sedan Asia Front 33,195 30,299 3.2 6 270 20 28 3575 108 186
Acura 3.5 RL4dr    Sedan Asia Front 43,755 39,014 3.5 6 225 18 24 3880 115 197
;
run;


proc print data = Cars;
run;