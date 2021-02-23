data Check1;

set perm.Errors;
	
where notdigit(trimn(Subj)) or
verify(trimn(PartNumber), '0123456789LS');
run;
proc print Data = Check1;
run;


